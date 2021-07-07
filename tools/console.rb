require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#############CULT INSTANCES ########## ---> (name,location, founding_year, slogan)

cult1 = Cult.new("cult1", "Paris, France", 1901, "We're Number One!")   
cult2 = Cult.new("cult2", "New York, NY", 1902, "We're Number Two!") 
cult3 = Cult.new("cult3", "Lima, Peru", 1903, "We're Number Three!") 

# cult1.cult_population 
# cult2.cult_population 

# Cult.find_by_name("cult1")
# Cult.find_by_name("cult2")
 
############FOLLOWERS############## --> (name, age, life_motto) 
follower1 = Follower.new("Adam", 11, "I'm Number One!")
follower2 = Follower.new("Bob", 22, "I'm Number Two!")
follower3 = Follower.new("Bob", 33, "I'm Number Three!")

# follower1.age

############BLOODOATH################## --> (date, cult, follower) 
bloodoath1 = BloodOath.new(2001, cult1, follower1)    # why didnt you test blood oath more? 
bloodoath2 = BloodOath.new(2002, cult2, follower2) 
bloodoath3 = BloodOath.new(2003, cult3, follower3)       
# bloodoath4 = BloodOath.new(2004, cult4, follower4)  
# bloodoath5 = BloodOath.new(2005, cult5, follower5)  
# bloodoath6 = BloodOath.new(2006, cult6, follower6)  

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits


