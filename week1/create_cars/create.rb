class ABC
  attr_accessor(:sound, :wheel)

  def initialize(sound)
    @sound = sound
    @wheels = 4
  end
end

class Bicicle
  attr_accessor(:sound, :wheel)

  def initialize(sound)
    @sound = sound
    @wheels = 2
  end
end

class MultyTruck
  attr_accessor(:sound, :wheel)

  def initialize(sound)
    @sound = sound
    @wheels = 18
  end
end



 class WheelCounter
  def initialize(vehicles)
    @vehicles = vehicles
  end

 def count

 #   num_wheels = @vehicles.reduce(0.0) do |sum, car|
 #     sum + car.wheels
 #   end
 #   puts "The number of wheels: "
 #   puts num_wheels
 #   num_wheels.to_i
 # end

  counter = 0
  @vehicles.each do |vehicle|
  counter += vehicle.wheels    
    end
   return counter 
 end
end

class SoundPrinter
  def initialize(vehicle)
    @vehicle = vehicle
  end

  def print
    @vehicles.each do |vehicle|
       puts vehicle.sound
     end
  end 
end


abc = ABC.new("ziim, ziim, ziim")
abc2 = Bicicle.new("brum, brum")
abc3 = MultyTruck.new("tun, tun, tun")
 
 vehicle_array = [abc, abc2, abc3]

 counter = WheelCounter.new(vehicle_array)
 puts counter.counter

 printer = SoundPrinter.new(vehicle_array)
 printer.print
