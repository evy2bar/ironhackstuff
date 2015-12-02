# def taste(food)
#   if food == "spinach"
#     puts "Yummy!!! SPINACH!!!"
  
#   elsif food == "bacon"
#      puts "Urgh"
  
#   else puts "Can i have some spinach on the side?"
#   end  
# end
# taste "rice"
@grades = [5,3,6,4,1,3]

def replaceNum(num0, num1)
    @grades.each_with_index {|n, index|
        if n == num0
             @grades[index] = num1
        end   
    }
end

replaceNum(3, 8)

puts @grades
