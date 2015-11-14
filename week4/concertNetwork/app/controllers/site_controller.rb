class SiteController < ApplicationController
	
	def home
		
		@concerts = Concert.all
		@today_concerts = @concerts.select{ |concert| Time.now.day == concert.date.localtime.day}
		@later_concerts = @concerts.select{ |concert| Time.now.day != concert.date.localtime.day }
		render ("home")

	end

	def details

			concert_id = params[:id]

    		@cons = Concert.find_by(id: concert_id)
    		if @cons == nil
    			redirect_to("/404")
    		else
				render("details")
			end
	end

end
