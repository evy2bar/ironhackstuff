class Spaceship
  def initialize(size, max_speed, weight)
    @size = size
​
    # max speed in "warps"
    @max_speed = max_speed
​
    # weight in "tons"
    @weight = weight
  end
​
  def fly
    puts "Taking off. You are airborne."
    puts "Flying at #{@max_speed} warps."
  end
​
  def land
    puts "Landing now!"
    puts "Get ready for all of my #{@weight} tons."
  end
end
​
enterprise = Spaceship.new("large", 100, 50)
​
puts "Created new spaceship:"
puts enterprise.inspect
​
# Spacing in the prints
puts "\n\n"
​
enterprise.fly
​
​
# Spacing in the prints
puts "\n\n"
​
millenium_falcon = Spaceship.new("small", 200, 20)
millenium_falcon.fly
​
​
# Spacing in the prints
puts "\n\n"
enterprise.land
​
​
# Information
#-------------
# size
# max speed
# weight
​
# color
# material
# year_designed
# date_built
# defense (number)
# weapons = ANOTHER CLASS
# engines = ANOTHER CLASS
​
​
# Behavior
#---------
# fly
# land
​
# transports people
# jettison parts
# fire weapons