class RegularMovie
  def get_total(days)
    return 2.0 if days <= 2
    2.0 + ((days - 2) * 1.5)
  end
end

class NewMovie
  def get_total(days)
    3.0 * days
  end
end

class KidsMovie
  def get_total(days)
    return 1.5 if days <= 3
    1.5 + ((days - 3) * 1.5)
  end
end
