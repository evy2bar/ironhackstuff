require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

# search = Imdb::Search.new(params [:movie_search])
# puts "Found this results for {#}"
# puts search.movies.size

# puts ""

# nine_movies = search.movies[0..8]
# nine_movies.each do | movie | 
# 	 p movie 
# end
# one_movie = nine_movies.first
# puts "Nine firsts results:"

# print "Title:"
# puts one_movie.title

# print "Year:"
# puts one_movie.year

# print "Poster:"
# puts one_movie.poster  

get '/' do

	erb(:home) 
end

 
get "/search" do 
	search = Imdb::Search.new(params[:movie_search])
	@nine_movies = search.movies[0..29]	
	@movies = @nine_movies.select { |m| m.poster != nil}[0..8]
	@question = @movies.sample
	questions = ["Which movie was release in #{@question.year}?", "Which movie was filmed in #{@question.filming_locations}?", "Which movie was directed by #{@question.director}?"]
	@random =  rand(3) 
	@random_question = questions[@random]
	@score = 0
	erb(:search)
end


