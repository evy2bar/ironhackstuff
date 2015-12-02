
class Blog
	attr_accessor :posts
	def initialize
		@posts = []
		@current_posts = []
		@page = 0
		@posts_per_page = 4
	end
	def add_post(post)
		@posts.push(post)
	end
	def latest_posts  
        @posts.sort! {|post1, post2| post2.date <=> post1.date}   
    end
		
end