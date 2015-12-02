class Board
	#attr_accessor :board :piece # use accessor if atributes needed outside the class

	def initialize(board, pieces)
		@board = board
		@pieces = pieces
	end

    def PrintBoard()
    	for i in 0..7
    		p @board[i]
    		# for j in 0..7
    		# 	puts @board[i][j]
    		# end
    	end
    end 

   def setBoard()   #set the pieces at the begining of the game 
   		for i in 0..7
   			@board.push([])
   			for j in 0..7
   			    @board[i].push(0)
   			end
		end
		for i in 0..7  
			@board[i][0] = 1
			@board[i][1] = 1
			@board[i][6] = 1
			@board[i][7] = 1
	    end
    end


   def movePiece(piece, x, y) # move the piece to a new position and check if the piece can be killed
       if piece.move(x,y)
       	    if checkMove(x,y)
       	  	 @board[x][y] == 1
       	  	 @board[piece.x][piece.y] == 0
       	    else
       	        piece.each do |p|
       	            if p.x == x && p.y == y
       	                if p.color == piece.color
       	                   puts "Illegal"
       	                   return false
       	                else
       	                 killing(p)
       	                end
       	            end 
   	            end
            end 
        end          	 
   end

   def checkMove(x,y) # check if the position is available 
    
   end

   def killing(piece)    # remove a piece from the board
   	@piece.delete(piece)
   end


end

# chessboard = Board.new()
# chessboard.PrintBoard()
 
 class Piece
 	def initialize(x,y, color)
 		@x = x
 		@y = y 
 		@color  = color
 	end

 end


 class Pawn  < Piece #peon
 	def move (new_x, new_y)
 		if new_x > 8 || new_y > 8 
			puts "Illegal" 
			return false	
 		elsif @x == new_x && @color == "black" && @y - new_y == 1
  			puts "Legal"
  			return true
		elsif @x == new_x && @color == "white" && @y - new_y == -1
  			puts "Legal"
  			return true
		else
  			puts "Illegal"
  			return false	
 		end
        @x = new_x
 		@y = new_y
 	end
 end 

bP1 = Pawn.new(1, 7, "black")
bB2 = Pawn.new(2, 7, "black")
bP3 = Pawn.new(3, 7, "black")
bP4 = Pawn.new(4, 7, "black")
bP5 = Pawn.new(5, 7, "black")
bP6 = Pawn.new(6, 7, "black")
bP7 = Pawn.new(7, 7, "black")
bP8 = Pawn.new(8, 7, "black")
wP1 = Pawn.new(1, 2, "white")
wP2 = Pawn.new(2, 2, "white")
wP3 = Pawn.new(3, 2, "white")
wP4 = Pawn.new(4, 2, "white")
wP5 = Pawn.new(5, 2, "white")
wP6 = Pawn.new(6, 2, "white")
wP7 = Pawn.new(7, 2, "white")
wP8 = Pawn.new(8, 2, "white")

# puts "Pawn:"
# bP1.move(1,6)
# bP3.move(4,7)
# wP3.move(3,1)

 class King < Piece
 	def move (new_x, new_y)
 		if new_x > 8 || new_y > 8 
			puts "Illegal" 	
			return false	
		elsif (@x == new_x && (@y - new_y).abs == 1) || (@y == new_y && (@x - new_x).abs == 1)
			puts "Legal"
			return true
		elsif (@x - new_x).abs == 1 && (@y - new_y).abs == 1
			puts "Legal"
			return true
		else
		   "Illegal"
		   return false	
		end
 		@x = new_x
 		@y = new_y
 	end
end
bK1 = King.new(4, 8,"black")
wK1 = King.new(4, 1, "white")

# puts "King:"
# bK1.move(4, 7)

class Queen < Piece
	def move (new_x, new_y)
		if new_x > 8 || new_y > 8 
			puts "Illegal"
			return false	
		elsif (@x - new_x).abs == (@y - new_y).abs
			puts "Legal"
			return true
		elsif @x - new_x == 0 || @y - new_y == 0
			puts "Legal"
			return true
		else
		    puts "Illegal"
		    return false	
		end 

		@x = new_x
 		@y = new_y
 	end	
end
bQ1 = Queen.new(5,8,"black")
wQ1 = Queen.new(5,1,"white")

# puts "Queen:"
# bQ1.move(6,6)
# wQ1.move(2,4)

class Bishop  < Piece                   #alfil
	def move (new_x, new_y)
		if new_x > 8 || new_y > 8 
			puts "Illegal" 	
			return false	
		elsif  @x - new_x == 0 || @y - new_y == 0
			puts "Illegal" 
			return false	
		elsif (@x - new_x).abs == (@y - new_y).abs
		puts "Legal"
		return true
	else 
		"Illegal"
		return false	
		end	
 		@x = new_x
 		@y = new_y
	end
end
bB1 = Bishop.new(3, 8, "black")
bB2 = Bishop.new(6, 8, "black")
wB1 = Bishop.new(3, 1, "white")
wB2 = Bishop.new(6, 1, "white")

# puts "Bishop"
# bB2.move(4,6) 
# wB1.move(4,1)



class Rook  < Piece                        #torre
	def move (new_x, new_y)	
		if new_x > 8 || new_y > 8 
			puts "Illegal" 	
			return false	
		elsif @x - new_x == 0 || @y - new_y == 0
			puts "Legal"
			return true
		else 
			puts "Illegal"
			return false	
		end							
		@x = new_x
 		@y = new_y

 	end	

end
bR1 = Rook.new(1, 8, "black")
bR2 = Rook.new(8, 8, "black")
wR1 = Rook.new(1, 1, "white")
wR2 = Rook.new(8, 1, "white")
 
 # puts "Rook:"
 #  bR1.move(1, 5)
 #  bR1.move(4, 6) 
 #  bR2.move(3,7)



class Knight < Piece                  #caballo
	def move (new_x, new_y)
        if new_x > 8 || new_y > 8 
			puts "Illegal" 
			return false		
		elsif ((@x - new_x).abs == 2 && (@y - new_y).abs == 1) || ((@x - new_x).abs == 1 && (@y - new_y).abs == 2)
			puts "Legal"
			return true
		else
			puts "Illegal"
			return false	
		end	
		@x = new_x
 		@y = new_y
 	end	
end
bK1 = Knight.new(2, 8, "black")
bK2 = Knight.new(7, 8, "black")
wK1 = Knight.new(2, 1, "white")
wK2 = Knight.new(7, 1, "white")
 
# puts "Knight:"
# bK1.move(4,6)

auxPieces = []

auxPieces.push(bP1)
auxPieces.push(bB2)
auxPieces.push(bP3)
auxPieces.push(bP4)
auxPieces.push(bP5)
auxPieces.push(bP6)
auxPieces.push(bP7)
auxPieces.push(bP8)
auxPieces.push(wP1)
auxPieces.push(wP2)
auxPieces.push(wP3)
auxPieces.push(wP4)
auxPieces.push(wP5)
auxPieces.push(wP6)
auxPieces.push(wP7)
auxPieces.push(wP8)
auxPieces.push(bK1)
auxPieces.push(wK1)
auxPieces.push(bQ1)
auxPieces.push(wQ1)
auxPieces.push(bB1)
auxPieces.push(bB2)
auxPieces.push(wB1)
auxPieces.push(wB2)
auxPieces.push(bR1)
auxPieces.push(bR2)
auxPieces.push(wR1)
auxPieces.push(wR2)
auxPieces.push(bK1)
auxPieces.push(bK2)
auxPieces.push(wK1)
auxPieces.push(wK2)


b = Board.new([], auxPieces)
b.setBoard
b.PrintBoard


