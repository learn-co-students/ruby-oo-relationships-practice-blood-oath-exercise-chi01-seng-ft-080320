 
      
class Cult

    attr_accessor :name, :location, ;founding_year, :slogan, :follower

    @@all = []

    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location 
        @founding_year = founding_year
        @slogan = slogan

        @@all << self 
    end 
    
    def recruit_follower(follower)
        BloodOath.new(date, self, follower)  
    end #takes in an argument of a Follower instance and adds them to this cult's list of


    def cult_population 
        recruited = BloodOath.all.select{|bloodoath| bloodoath.cult == self}.count ##???
        joined = BloodOath.all.select{|bloodoath| bloodoath.follower == self}.count  ##???
        total = recruited + joined
        total 
     end #followers either join or are recruited  

     def self.all 
        @@all 
     end #returns an Array of all the cults
     
     def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
     end #takes a String argument that is a name and returns a Cult instance whose name matches that argument
     
     def self.find_by_location(location)
        self.all.select{|cult| cult.location == location} #??
     end #takes a String argument that is a location and returns an Array of cults that are in that location
    
     def self.find_by_founding_year(founding_year)
        @@all.select{|cult|cult.founding_year == founding_year}
     end #takes an Integer argument that is a year and returns all of the cults founded in that year

########################

     def average_age 
        total_age = BloodOath.all.map{|bloodoath|bloodoath.follower.age}.sum 
        average_age = total_age/cult_population
        average_age.to_f
     end #returns a Float that is the average age of this cult's followers

     def my_followers_mottos 
        BloodOath.all.map{|bloodoath|bloodoath.follower.life_motto}
     end #prints out all of the mottos for this cult's followers
     
     def self.least_popular 
        Cult.all.sort_by{|cult| cult.cult_population}.first.name 
     end #returns the Cult instance who has the least number of followers :(


     def self.most_common_location
        Cult.all.sort_by{|cult|cult.cult_population}.last.name 
     end #returns a String that is the location with the most cults






    # # def founding_year 
    #     puts {founding_year.to_i}
    #     # puts Integer that is th enumber of followers in this cult 
    # # end 

    # def slogan 
    #     puts {"#slogan"}
    # end 

  

    # def cult_population
    #     @cult_population.to_i << followers
    # end 

    # #### def cults_total 
    #     #@@all.self << cults 
    # # end 

    # def find_by_name(cult_name)
    #     @@self.cult.to_s == cult_name
    # end 

    # def find_by_location(location)
    #     @self.location.to_s 
    #     return @@self.all
    # end 

    # def find_by_founding_year(year_founded)
    #     year_founded.to_s 
    #     # return @cults
    # end 


    ###################

 