def fizzbuzz(n)
  result = ""
  (1..n).each do |i|
     
  if i % 3 == 0
    result << "Fizz"
  end
  if i % 5 == 0
    result << "Buzz"
  end
  if i.to_s[0] == "1" 
      result << "Bang"
   end   
   puts result == "" ? i : result 
   result = ""
   end  
end

fizzbuzz(50)