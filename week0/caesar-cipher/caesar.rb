
def cipher(input)
	n = input.length - 1
	input = input.split('')
	result = ''
	input.each do |i|
		if i != ' '
			num = i.ord
			if num - 3 < 97
			   dif = 97 - (num - 3)
			   num = 123 - dif
			else 
		    	num -= 3
		    end
			result += num.chr 

		else
			result += ' '
		end
	end
	puts result 
end
  
 cipher("pb uhdo qdph lv grqdog gxfn")