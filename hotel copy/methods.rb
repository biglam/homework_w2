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
  #list current status of hotels
  #find out which hotel to stay att
  #get users name
  #create user
  #check emptu room is available
  #add user to room
  #if double check if second occupant
  #remove user from hotel
end
#chain1.hotels["hotel1"].rooms[1].guests["Jim"] = jim

def list_all
  self.hotels.each { |name, obj| 
    self.hotels[name].list_status }
    return nil
end