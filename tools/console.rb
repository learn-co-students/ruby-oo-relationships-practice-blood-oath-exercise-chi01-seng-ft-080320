require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#CULTS --> (name,location, founding_year, slogan)
cult1 = Cult.new("Cult1", "Paris, France", 1901, "We're Number One!")   # the year is not a string?!
cult2 = Cult.new("Cult2", "New York, NY", 1902, "We're Number Two!") 
cult3 = Cult.new("Cult3", "Lima, Peru", 1903, "We're Number Three!") 

cult1
cult2
cult3

cult1.cult_population 
cult2.cult_population 
cult3.cult_population 

Cult.find_by_name("cult1")
Cult.find_by_name("cult2")
Cult.find_by_name("cult3")

#FOLLOWERS --> (name, age, life_motto) 
follower1 = Follower.new("Adam", 11, "I'm Number One!")
follower2 = Follower.new("Bobby", 22, "I'm Number Two!")
follower3 = Follower.new("Chad", 33, "I'm Number Three!")

follower1
follower2
follower3
 
follower1.age
follower2.age
follower3.age

#BLOODOATH --> (date, cult, follower) 
BloodOath.first_oath     # why didnt you test blood oath more? 

binding.pry
puts "Mwahahaha!" # just in case pry is buggy and exits