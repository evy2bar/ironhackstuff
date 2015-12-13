require_relative("../lib/blog.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new#=====>
		@post4 = Post.new("New stuff", $TODAY, "Just some new funny stuff")
	end

	it("posts") do
		expect(@blog.posts).to eq([])
    end

end