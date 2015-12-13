 require 'date'
 $TODAY = Date.today

class Post
	attr_reader :date, :title, :content
	def initialize(title, date, content)
		@title = title
		@date = date
		@content = content
	end

	def display_post
 		puts " "
 		puts "#{@title}   #{@date}"
 		puts "*" * @title.length
 		puts @content
 		puts "-" * @content.length
 		puts " "
 	end
 end

my_blog = Blog.new



