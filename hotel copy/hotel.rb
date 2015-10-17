class Hotel

  attr_accessor :rooms, :people
  attr_reader :name 

  def initialize(name, address)
    @name = name
    @address = address
    @rooms = {}
    @people = {}
  end

  def create_room(id, price, occupancy)
    newroom =Room.new(id, price, occupancy)
    @rooms[id] = newroom
  end

  def create_person(name)
    newperson = Person.new(name)
    @people[name] = newperson
  end

  def list_status
    puts "Hotel name - #{@name}"
    self.rooms.each { |x, y| puts "Room #{x} has #{y.guests.size} guests, occupancy #{y.occupancy}" }
    return nil
  end 

end