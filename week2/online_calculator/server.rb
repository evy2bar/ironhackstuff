require "pry"
require "sinatra"
require "sinatra/reloader" if development?   # the same as ==>   if development
                                               #                   require "sinatra-reloader"
                                               #                  end
 
get "/online_calculator/user" do
	erb(:user)
end

get "/online_calculator/home" do
	erb(:home)
end 

post "/calculate" do
	# add = params[:add]
	# sub = params[:sub]
	operation = params[:operation]
	first = params[:first_number].to_f
  	second = params[:second_number].to_f
	result = 0
	if operation == 'add'
		result = first + second
		puts result
		"THE ADDITION OF #{first} AND #{second} IS #{result}"

	elsif operation == "multiply"
		result = first * second
		"#{first} * #{second} = #{result}"

	elsif operation == "divide"
		result = first / second
		"#{first} / #{second} = #{result}"

	else
		result = first - second
		"#{first} - #{second} = #{result}"
	end
end
# post "/successful" do
#   # CHARGE THEM THAT MONEY

#   redirect to("/online_calculator/home")
# end

# get "/online_calculator" do
# 	erb(:subtract)
# end
# post "/calculate" do
#   third = params[:first_number].to_f
#   fourth = params[:second_number].to_f
#   result2 = third - fourth
#   "#{third} - #{fourth} = #{result2}"
# end


# get "/online_calculator/multiply" do
# 	erb(:multiply)
# end
# post "/calculate" do
#   first1 = params[:first_number].to_f
#   second2 = params[:second_number].to_f
#   result3 = first1 * second2
#   "#{first1} * #{second2} = #{result3}"
# end


# get "/online_calculator/divide" do
# 	erb(:divide)
# end
# post "/calculate" do
#   first3 = params[:first_number].to_f
#   second4 = params[:second_number].to_f
#   result4 = first3 / second4
#   "#{first3} / #{second4} = #{result4}"
# end


 