require_relative("../lib/post.rb")
require_relative("../lib/blog.rb")
RSpec.describe Post do
	before(:each) do
		@post1 = Post.new("My sweet new blog", $TODAY - 10, "This is my first post on the sweet new blog")#=====>
		@post2 = Post.new("Second Post", $TODAY - 9, "This is my second post on the sweet new blog")
		@post3 = Post.new("Third Post", $TODAY - 8, "This is my third post on the sweet new blog")
 	end

	it("title") do 
		expect(@post1.title).to eq("My sweet new blog")   
		expect(@post2.title).to eq("Second Post")         
		expect(@post3.title).to eq("Third Post")          
	end

	it("date") do 
		expect(@post1.date).to eq($TODAY - 10)
		expect(@post2.date).to eq($TODAY - 9 )
		expect(@post3.date).to eq($TODAY - 8 )
	end
	it("content") do 
		expect(@post1.content).to eq("This is my first post on the sweet new blog")
		expect(@post2.content).to eq("This is my second post on the sweet new blog")
		expect(@post3.content).to eq("This is my third post on the sweet new blog")
	end
end


#sponsored_post = SponsoredPost.new("A message from our sponsors", $TODAY - 7, "Please buy our stuff...")
# post1 = Post.new("My sweet new blog", $TODAY - 10, "This is my first post on the sweet new blog")
# post2 = Post.new("Second Post", $TODAY - 9, "This is my second post on the sweet new blog")
# post3 = Post.new("Third Post", $TODAY - 8, "This is my third post on the sweet new blog")
# post4 = Post.new("Fourth Post", $TODAY - 7, "This is my fourth post on the sweet new blog")
# post5 = Post.new("Fifth Post", $TODAY - 6, "This is my fifth post on the sweet new blog")
# post6 = Post.new("Sixth Post", $TODAY - 5, "This is my sixth post on the sweet new blog")
# post7 = Post.new("Seventh Post", $TODAY - 4, "This is my seventh post on the sweet new blog")
# post8 = Post.new("Eighth Post", $TODAY - 3, "This is my eight post on the sweet new blog")
# post9 = Post.new("Ninth Post", $TODAY - 2, "This is my ninth post on the sweet new blog")
# post0 = Post.new("Tenth Post", $TODAY - 1, "This is my tenth post on the sweet new blog")

