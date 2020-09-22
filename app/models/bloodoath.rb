
    class BloodOath
    
        attr_reader :date, :cult, :follower

        @@all = []

        def initialize (date, cult, follower)
            @date_of_initiation = date  #returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
            @cult = cult 
            @follower = follower 

            @@all << self
        end

        def self.all
            @@all   
        end #returns an Array of all the blood oaths

    #     def self.first_oath
    #         self.all.first.follower 
    #     end #returns the Follower instance for the follower that made the very first blood oath

    end 