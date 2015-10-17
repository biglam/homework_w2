public
def menu
  puts `clear`
  puts "Welcome to My Hotel Chain"
  puts 
  puts "Please choose from the following uptions"
  puts 
  puts "1. Check in new guest"
  puts "2. Check out existing guest"
  puts "3. Show availability"
  puts "4. Show revenue"
  puts
  print "Your selection: "
  gets.to_i
end



def check_in
  self.list_hotels
  puts "Which hotel would you like to book into? Enter hotel name"
  branch = gets.chomp
  puts "Do you requre a double room? y/n"
  double = gets.chomp
  until double == "y" || double == "n"
    puts "Error. Please try again"
    double = gets.chomp
  end
  puts "Current occupancy at #{branch}:"
  case double
  when "y"
    self.hotels[branch].list_status("double")
  else
    self.hotels[branch].list_status("single")
  end
  puts "Guest name? "
  guest1 = gets.chomp
  if double == "y"
    puts "Guest 2 name? "
    guest2 = gets.chomp
  end
  roomidx = self.hotels[branch].find_empty_room(double)
  puts "You are staying in Room #{roomidx[0]}"
 self.hotels[branch].rooms[roomidx[0]].guests[guest1] = self.hotels[branch].create_person(guest1)
 if double == "y"
  self.hotels[branch].rooms[roomidx[0]].guests[guest2] = self.hotels[branch].create_person(guest2)
end
end
#chain.hotels["hotel1"].rooms[1].guests["Jim"] = jim

def check_out
# Check out existing guest
# display list of guests
self.list_guests_in_chain
puts "Which hotel are you checking out of? Enter hotel name."
self.list_hotels
currenthotel = gets.chomp
puts "Who is checking out?"
guest = gets.chomp
self.delete_guest(currenthotel,guest)
puts "#{guest} has been checked out!"
end
def list_hotels
  self.hotels.each { |name, obj| puts "Name: #{obj.name} Location: #{obj.address}" }
end

def list_all
  self.hotels.each { |name, obj| 
    self.hotels[name].list_status("all") }
    return nil
end

def show_revenue
  puts "called"
end
