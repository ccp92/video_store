# frzoen_string_literal: true

class Movie
  def initialize(days)
    @days = days
  end

  def rental_cost
  end

  def reward_points
    1
  end
end

class RegularMovie < Movie
  def rental_cost
    return 2.0 if @days <= 2
    2.0 + ((@days - 2) * 1.5)
  end
end

class NewMovie < Movie
  def rental_cost
    3.0 * @days
  end

  def reward_points
    return 1 if @days == 1
    2
  end
end

class KidsMovie < Movie
  def rental_cost
    return 1.5 if @days <= 3
    1.5 + ((@days - 3) * 1.5)
  end
end
