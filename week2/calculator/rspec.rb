require("./calc.rb")

RSpec.describe"String calculator" do 
it "return 0 for an empty string" do 
 	calc = StringCalculator.new

 	expect( calc.add("")).to eq(0)
    end
it "return 6 " do 
 	calc = StringCalculator.new

 	expect( calc.add("6")).to eq(6)
    end
it "return 6,7 " do 
 	calc = StringCalculator.new
           
 	expect( calc.add("6,7")).to eq(13)
    end
it "return 6\n7 " do 
 	calc = StringCalculator.new
           
 	expect( calc.add("6\n7")).to eq(13)
    end


end