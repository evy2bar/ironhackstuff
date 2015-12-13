require "sinatra"
require "sinatra/reloader" if development?

get "/shirts_list" do 
erb(:shirts)
end
