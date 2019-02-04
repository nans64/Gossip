class WelcomeController < ApplicationController
  
  def index_welcome	
  	@firstname = params[:first_name]

  	@gossips = Gossip.all
	end

 	def index_link_to_gossip
 		@id_gossip = params[:gossip_id]
 	end
  

end