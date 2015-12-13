 
class UsernamePassword
	def initialize(username,password)
	@username = username
	@password = password
    end
    def verify
    	@username =="evy2bar" && @password =="123"
    end
 end
 

puts "Username"
username = gets.chomp

puts "Password"
password = gets.chomp


upass = UsernamePassword.new(username, password)

if upass.verify && password.length <= 3 
	puts "CORRECT"
	puts "\nCorrect!Now give me some text"
	 word = gets.chomp
elsif password.length > 3
 puts "\nYou've entered more words"
	

	
else
	puts "INCORRECT"
    puts "GET OUTTA HERE!!"

end
