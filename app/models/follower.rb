# ######################################
class Follower

            attr_reader :name, :age, :life_motto

            @@all = [] #  Array of the follower's cults

   def initialize (name, age, life_motto)
       @name = name
       @age = age
       @life_motto = life_motto
       
       @@all << self #returns an Array of this follower's cults
   end
 
#     def cults 
#         BloodOath.all.select{|bloodoath|bloodoath.follower == self} #capitalize bloodoat? 
#     end #returns an Array of this follower's cults

    
#    def join_cult(date, cult) #is cult required as an argument??? 
#        BloodOath.new(date, cult, self)
#    end #takes in an argument of a Cult instance and adds this follower to the cult's list of followers

   def self.all 
       @@all 
   end 

#    def self.of_a_certain_age(age)
#        BloodOath.all.select{|bloodoath|BloodOath.follower.age >= age}
#    end #takes an Integer argument that is an age and returns an Array of followers who are the given age or older

# #    def self.of_certain_age(age)
# #        all.select do |follower|        #change the enumerable format to this one's 
# #        follower.age >= age
# #    end

#    def my_cults_slogans
#    end #prints out all of the slogans for this follower's cults

#    def self.most_active
#    end #returns the Follower instance who has joined the most cults

#    def self.top_ten
#        Follower.all.sort_by{|follower|follower.cults_following}.reverse.first(10)
#    end #returns an Array of followers; they are the ten most active followers

end
