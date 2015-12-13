require "sinatra"
require "sinatra/reloader" if development?

 get "/" do  #this is a normal host :localhost4567
 	"My first Sinatra app, and still.."
 end
get "/hi" do  #this is another host :localhost4567/hi
	"hello, world!"
end
get "/about" do  
	"Hi, I'm Eve, and I love riding around with my bike"
	bday = Time.new(1983, 12, 20)
	now = Time.now
	@years_ago = now.year - bday.year
	erb(:author)
end

get "/users/:username" do
	@name = params[:username]

	erb (:user_profile)
end

get "/hoursago/:minus_hours" do
   @time_ago = params[:minus_hours].to_i
   @hours = @time_ago * 3600
   @hours_ago = Time.now - @hours

	erb(:hours_ago)
end
