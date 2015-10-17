class Chain
  attr_accessor :hotels
  def initialize(name)
    @name = name
    @hotels = {}
  end

  def create_hotel(name, address)
    newhotel =Hotel.new(name, address)
    @hotels[name] = newhotel
  end

end