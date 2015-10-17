class Room
  attr_accessor :guests, :occupancy
  def initialize(id, price, occupancy)
    @id = id
    @price = price
    @occupancy = occupancy
    @guests = {}
  end

end