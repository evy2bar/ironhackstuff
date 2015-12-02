# class Car
# def initialize(color, make, year_build, noise = nil)
# @color = color
# @make = make
# @year_build = year_build
# @noise = noise
# end

# def driving

#  if @noise == nil
#  puts "I'm a #{@year_build} #{@color} #{@make} car.My engine does't sound when starts!!"
#  else
#        puts "I'm a #{@year_build} #{@color} #{@make} car.My engine sounds #{@noise} when starts!!"
#  end

#  end

# end


#    porshe = Car.new("gray", "Porshe",2015, "Broom")
#  porshe.driving

#    #=============>>>>>>>>>>>    def self.double_start(initialize)   



#    tesla = Car.new("silver", "Tesla", 2016) # and leave this without puting anything
#   tesla.driving

#    bmw = Car.new("black","BMW-z4" , 2014, "Broooommmm")
#   bmw.driving

# 

 #======================this is how i did it before============================
class Car
   def initialize(color, make, year_build, noise = nil)
 @color = color
 @make = make
 @year_build = year_build
 @noise = noise
 @cities_visited = []

   end  

   def driving
    if @noise == nil   # >>>>>>>>>>>>>>>>>==========
         puts "I'm a #{@year_build} #{@color} #{@make} car.My engine does't sound when starts!!"
    else
        puts "I'm a #{@year_build} #{@color} #{@make} car.My engine sounds #{@noise} when starts!!"
      end
   end
   def road_trip(city)
   	puts "Taking a road trip to #{city}"
   	@cities_visited.push(city)
   end
   def cities_visited
   	@cities_visited
   end
end

class RaceCar < Car
  	@sound = "Broooommmm"
   	def initialize(color, make, year_build, noise)
			@color = color
      @make = make
      @year_build = year_build
      @noise = "Broooooom"
	   end  

   	def race 
         puts "I'm sooo fast!!!"

         puts @noice
  	end
end
    
    race_car = RaceCar.new("yellow", "Mustang-GTO", 1969, "sd")
   race_car.driving

    porshe = Car.new("gray", "Porshe",2015, "Broom")
  porshe.driving

    tesla = Car.new("silver", "Tesla", 2016)    #>>>>>>>>>>>>>>>>===========
  tesla.driving

   bmw = Car.new("black","BMW-z4" , 2014, "Broooommmm")
  bmw.driving

puts "\n\n"
 porshe.road_trip("New York")
 porshe.road_trip("washingtong")
puts "\n\n"
puts "I've been in these cities:"
puts porshe.cities_visited.inspect




















