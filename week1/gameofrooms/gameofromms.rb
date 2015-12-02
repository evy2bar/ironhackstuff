class Room
	attr_accessor(:exit, :descrition)
	def initialize(exit, descrition)
		@exit = exit
		@description
	end
	def exit?(direction)
		@exit == direction
	end
end


class Game
    def initialize
	@location = 0
	@rooms = []
    end

	def add_room(room)

	end

	def start

	end

    def move(direction)
    	if 

    	elsif

    	else

    	end
    end 

	def finish
		#print message
	end
end



  ##=======================================================================================
      #THIS IS THE ONLY WAY TO GET TO THE FINISH ROOM
my_room1 - Room.new("w", "you are in a dark room")
my_room2 - Room.new("W", "you are in a bright room")
my_room3 - Room.new("S", "you've arrive from heaven, it'll only get worse...")
# my_room4 - Room.new("E", "you are in a dark room")
# my_room5 - Room.new("E", "you are in a dark room")
# my_room6 - Room.new("S", "you are in a dark room")
# my_room7 - Room.new("W", "you are in a dark room")
# my_room8 - Room.new("W", "you are in a dark room")
# my_room9 - Room.new("S", "you are in a dark room")


my_game = Game.new
my_game.add_room(my_room1)
my_game.start
my_game.move("w")

 puts ""
 puts my_room1.descrition
 puts ""

print "enter a direction"
input = gets.chomp

if my_room1.exit?(input)    # esto se repite para cadda room, escribirlo luego y borrar este mensaje
	puts"\n\n"
	puts my_room2.description
	puts ""

	print "enter a direction"
    input = gets.chomp





















