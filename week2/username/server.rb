require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)

credentials = [
	{:username => "Josh", :password => "password"},
	{:username => "eve", :password => "pipo"},
]

get "/login" do
	@error = session[:error]

	session[:error] = nil

	 erb (:user)	
end
 
post "/processing" do 
     username = params[:username]
	 password = params[:password]
 	 matched_user = nil
 	 #matched_pass = nil

	credentials.each do |i|
	  	if username == i[:username] && password == i[:password]  
	  	 	matched_user = username
	  	 	#matched_pass = password
		end
	end
	  	if matched_user != nil 
	  	   session[:current_user] = matched_user
	  	  
	  	 	redirect to ("/profile")
	  	else 
	  		session[:error] = "Incorrect login"
	  	 	redirect to ("/login")
	  	end

	  	
end	

get "/profile" do 
	session[:current_user] != nil
	@name = session[:current_user]
    erb(:user_profile)
end
	

get "/logout" do
session[:current_user] = nil
 	redirect to ("/login")
end

# post "/login" do
# 	erb(:user_profile)
# end
