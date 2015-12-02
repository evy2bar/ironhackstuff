
class StringCalculator
	def initialize()
	end

    def add(str)   #add will always receive a string
    	if str == ("")       # empty string its gonna return 0
    		0
    	elsif str.length == 1     # to know how many caracters a string has, use .length, and compared to 1
    		                      # to state that the string has to have only one caracter,so this condition 
            str.to_i              # is true. to_i convert the string into a integer

        elsif  str.include?("\n")
    		a = str.split("\n")[0].to_i
			b = str.split("\n")[1].to_i
			result = a + b
    	else
    		a = str.split(',')[0].to_i  # once the string is splited and converted into integers, asume that position 0(1), and 
    		b = str.split(',')[1].to_i  # position 1(2) are a and b(variables) and then, add to obtain the result
    		result = a + b
    	end

    end 
end


# my_calc = StringCalculator.new
 
# puts my_calc.add( "" )
# puts my_calc.add( "6" )
# puts my_calc.add( "9" )
# puts my_calc.add( "6,7" )
# puts my_calc.add( "3,8" )

#  result = my_calc.add("")

#  if result != 0
#  	puts "Wrong result for empty string"
#  else
#  	puts "Correct result for empty string"
#  end

#  result2 = my_calc.add("6")

#  if result2 != 6
#  	puts "Wrong result for 6"
#  else
#  	puts "Correct result for 6"
#  end


# result2 = my_calc.add("9")

#  if result2 != 9
#  	puts "Wrong result for 9"
#  else
#  	puts "Correct result for 9"
#  end


# result = my_calc.add("6,7")

#  if result != 13
#  	puts "Wrong result for 6,7"
#  else
#  	puts "Correct result for 6,7"
#  end



# # result = my_calc.add("9,8")

# #  if result != 17
# #  	puts "Wrong result for 9,8"
# #  else
# # 	puts "Correct result for 9,8"
# #  end



# result = my_calc.add("3,8")

#  if result != 11
#  	puts "Wrong result for 3,8"
#  else
#  	puts "Correct result for 3,8"
#  end





