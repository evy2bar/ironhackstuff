class ResultsController < ApplicationController

	def result
		render 'maps'
	end

	def direction_panel
		render 'direction_panel'
	end

end
