
    class BloodOath
        
        attr_accessor :follower
        attr_reader :date, :cult 

        @@all = []

        def initialize (date, cult, follower)

            @date = date
            @cult = cult 
            @follower = follower 

            @all << self

        end
                
         def self.all
            @all           #returns an Array of all the blood oaths
        end
        
    end 