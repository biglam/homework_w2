class Hotel

  attr_accessor :rooms, :people
  attr_reader :name, :address, :price

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

  def list_status(type)
    puts "Hotel name - #{@name}"
    case type
    when "all"
      self.rooms.each { |x, y| 
         puts "Room #{x} has #{y.guests.size} guests, occupancy #{y.occupancy}" }
      return nil
    when "single"
      self.rooms.each { |x, y| 
        if y.occupancy==1
          puts "Room #{x} has #{y.guests.size} guests, occupancy #{y.occupancy}"
        end } 
      when "double"
        self.rooms.each { |x, y| 
          if y.occupancy==2
            puts "Room #{x} has #{y.guests.size} guests, occupancy #{y.occupancy}"
          end }
        end
  end 

  def find_empty_room(type)
    if type == "y"
      occup = 2
    else
      occup = 1
    end
    room = self.rooms.find{|key,value| value.guests.size == 0 && value.occupancy = occup }
  end 

  def list_guests_in_hotel
    people.each { |x, y| puts x }
  end

  def remove_guest(name)
    binding.pry;''
    #self.rooms[1].guests.delete(1)
    self.people.delete(name)
  end

  def get_revenue
    revcount = 0.00
    self.rooms.select{|key,value| value.guests.size>0}.each {|k,v| revcount += v.price}
    return revcount
  end

end