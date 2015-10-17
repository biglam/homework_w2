require 'pry-byebug'
require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'person'
require_relative 'methods'

chain1 = Chain.new 'My Chain'
# chain2 = Chain.new 'My 2nd Chain'

chain1.create_hotel('hotel1', 'Edinburgh')
chain1.create_hotel('hotel2', 'Glasgow')
chain1.create_hotel('hotel3', 'Dundee')
chain1.create_hotel('hotel4', 'Aberdeen')

#chain1.hotels["hotel1"].rooms
#chain1.hotels["hotel1"].create_room(1,1,2)
#pry(main)> chain1.hotels["hotel1"].rooms[1]

10.times do |x|
  occup = rand(2)
  if occup == 1
    price = 20.00
  else
    price = 35.00
  end
  chain1.hotels["hotel1"].create_room(x+1,price, occup+1)
end

chain1.hotels["hotel1"].create_person("Jim")
chain1.hotels["hotel1"].create_person("John")
chain1.hotels["hotel1"].create_person("Mary")

chain1.hotels["hotel1"].rooms[1].guests[1] = chain1.hotels["hotel1"].create_person("Claire")

response = menu 
while response != 0
    
    case response
    when 1
    # Check in new guest"
        when 2
    # Check out existing guest"
    when 3
      chain1.list_all
    when 4
      #. Show revenue"
    else
      puts "Incorrect input"
    end

    puts "press enter to continue"
    gets 

    response = menu
end

binding.pry;''
