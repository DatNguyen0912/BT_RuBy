require_relative "Room"

class RoomA < Room
  def initialize
    super("A", 500)
  end

  def show()
    puts "Room A - category: #{@category_114}, price: #{@price_114}"
  end
end