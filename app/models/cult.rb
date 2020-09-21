 
      
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


    #returns an Integer that is the number of followers in this cult



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

 