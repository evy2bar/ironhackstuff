
require "sinatra"
require "sinatra/reloader" if development?
require_relative "lib/blog.rb"
require_relative "lib/post.rb"


blog = Blog.new
blog.add_post Post.new("My sweet new blog", $TODAY - 10, "This is my first post on the sweet new blog")
blog.add_post Post.new("Second Post", $TODAY - 9, "This is my second post on the sweet new blog")
blog.add_post Post.new("Third Post", $TODAY - 8, "This is my third post on the sweet new blog")
blog.add_post Post.new("New stuff", $TODAY, "Just some new funny stuff")
get "/home" do
	@posts = blog.latest_posts
	erb (:home)
end

get "/post_details/:id" do
	id = params[:id].to_i
	erb(:post_details)
end

