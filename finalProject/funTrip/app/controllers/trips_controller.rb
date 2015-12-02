class TripsController < ApplicationController

	before_action :authenticate_user!, only: []

	def index
		render "index"
	end

end
