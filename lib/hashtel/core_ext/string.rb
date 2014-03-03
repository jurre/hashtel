require_relative "../../hashtel"

class String
  def pastel_color
    Hashtel.pastel_color(self)
  end
end
