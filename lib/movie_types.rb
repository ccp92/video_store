# frzoen_string_literal: true

class RegularMovie
  def rental_cost(days)
    return 2.0 if days <= 2
    2.0 + ((days - 2) * 1.5)
  end

  def reward_points(_days)
    1
  end
end

class NewMovie
  def rental_cost(days)
    3.0 * days
  end

  def reward_points(days)
    return 1 if days == 1
    2
  end
end

class KidsMovie
  def rental_cost(days)
    return 1.5 if days <= 3
    1.5 + ((days - 3) * 1.5)
  end

  def reward_points(_days)
    1
  end
end
