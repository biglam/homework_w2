require 'pry-byebug'
require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'person'
require_relative 'methods'

chain = Chain.new 'My Chain'

chain.create_hotel('hotel1', 'Edinburgh')
chain.create_hotel('hotel2', 'Glasgow')
chain.create_hotel('hotel3', 'Dundee')
chain.create_hotel('hotel4', 'Aberdeen')

10.times do |x|
  occup = rand(2)
  if occup == 1
    price = 20.00
  else
    price = 35.00
  end
  chain.hotels["hotel1"].create_room(x+1,price, occup+1)
end

15.times do |x|
  occup = rand(2)
  if occup == 1
    price = 18.00
  else
    price = 32.00
  end
  chain.hotels["hotel2"].create_room(x+1,price, occup+1)
end

4.times do |x|
  occup = rand(2)
  if occup == 1
    price = 15.00
  else
    price = 25.00
  end
  chain.hotels["hotel3"].create_room(x+1,price, occup+1)
end

8.times do |x|
  occup = rand(2)
  if occup == 1
    price = 19.00
  else
    price = 32.00
  end
  chain.hotels["hotel4"].create_room(x+1,price, occup+1)
end

# Make people for testing purposes
chain.hotels["hotel1"].rooms[1].guests[1] = chain.hotels["hotel1"].create_person("Claire")
chain.hotels["hotel1"].rooms[2].guests[1] = chain.hotels["hotel1"].create_person("Bobby")
chain.hotels["hotel2"].rooms[1].guests[1] = chain.hotels["hotel2"].create_person("Ryan")
chain.hotels["hotel4"].rooms[1].guests[1] = chain.hotels["hotel4"].create_person("Jenny")
chain.hotels["hotel1"].rooms[3].guests[1] = chain.hotels["hotel1"].create_person("Robert")
chain.hotels["hotel3"].rooms[1].guests[1] = chain.hotels["hotel3"].create_person("Ben")
chain.hotels["hotel3"].rooms[2].guests[1] = chain.hotels["hotel3"].create_person("Kate")
chain.hotels["hotel4"].rooms[1].guests[1] = chain.hotels["hotel4"].create_person("Erik")

# #Problems -
# cant have two people with same name
# refuse entry if rooms are full
# interface is very annoying
# check-out couples together if double room
# ask again if user or hotel entered isn't found

response = menu 
while response != 0
    
    case response
    when 1
      chain.check_in
        when 2
      chain.check_out
    when 3
      chain.list_all
    when 4
      chain.show_revenue
    else
      puts "Incorrect input"
    end

    puts "press enter to continue"
    gets 

    response = menu
end


