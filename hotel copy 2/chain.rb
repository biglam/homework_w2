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

  def list_guests_in_chain
    hotels.each { |x, y| 
      puts "The following people are staying in - #{x}"
      hotels[x].list_guests_in_hotel }
  end


  #

end