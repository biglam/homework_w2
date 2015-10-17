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
  puts "Current occupancy at #{branch}:"
  self.hotels[branch].list_status
  puts "Do you requre a double room? y/n"
  double = gets.chomp
  until double == "y" || double == "n"
    puts "Error. Please try again"
    double = gets.chomp
  end
  if double == "y"
  #get users name
  puts "Guest name? "
  guest = gets.chomp
  self.hotels[branch].rooms[2].guests[guest] = self.hotels[branch].create_person(guest)

  #create user
  #check emptu room is available
  #add user to room
  
  #remove user from hotel
end
#chain.hotels["hotel1"].rooms[1].guests["Jim"] = jim
def list_hotels
  self.hotels.each { |name, obj| puts "Name: #{obj.name} Location: #{obj.address}" }
end

def list_all
  self.hotels.each { |name, obj| 
    self.hotels[name].list_status }
    return nil
end