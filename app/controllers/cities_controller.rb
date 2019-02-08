class CitiesController < ApplicationController

	def show
		    @id_city = params[:id]
		    @gossips = Gossip.all
	end
end
