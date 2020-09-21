######################################
class Follower

    attr_reader :name, :age, :life_motto

   @@all_cults= []
   @@all_followers = []

   def initialize (name, age, life_motto)
       @name = name
       @age = age
       @life_motto = life_motto
       @@all << self
   end

   def name 
       puts {#name}
   end 

   def age 
       @age
   end 

   def life_motto 
       @life_motto
   end 

   def cults 
       # returns an `Array` of this follower's cults

   end 

   def join_cult(Cult)
       @@all_followers << self 
   end 

   

   def self.of_certain_age(age)
       all.select do |follower|
       follower.age >= age
   end