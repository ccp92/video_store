require 'available_movies'
require 'movie_types'

class Statement
  def initialize(transaction)
    @available_movies = AvailableMovies.new.movies
    @transaction = transaction
  end

  def output
    statement_output = output_builder
    list = list(statement_output)
    total_cost = total_cost(statement_output)
    total_points = total_points(statement_output)

    return "Rental Record for Customer Name\n" +
    "#{list}You owe #{total_cost}\n" +
    "You earned #{total_points} frequent renter points" if !@transaction.keys[0].nil?


    "Rental Record for Customer Name\n" +
    "You owe 0\n" +
    "You earned 0 frequent renter points"
  end

  def output_builder
    statement_output = {}
    @transaction.each do |key, value|
      rental_type = @available_movies[key]
      if rental_type == :kids
        rental_cost = KidsMovie.new(value).rental_cost
        reward_points = KidsMovie.new(value).reward_points
      end
      if rental_type == :regular
        rental_cost = RegularMovie.new(value).rental_cost
        reward_points = RegularMovie.new(value).reward_points
      end
      if rental_type == :new
        rental_cost = NewMovie.new(value).rental_cost
        reward_points = NewMovie.new(value).reward_points
      end
      statement_output[key] = [rental_cost, reward_points]
    end
    statement_output
  end

  def list(statement_output)
    string = ""
    statement_output.each do |key, value|
      string << "#{key} #{value[0]}\n"
    end
    string
  end

  def total_cost(statement_output)
    total = 0.0
    statement_output.each_value do |value|
      total += value[0]
    end
    total
  end

  def total_points(statement_output)
    total = 0
    statement_output.each_value do |value|
      total += value[1]
    end
    total
  end
end
