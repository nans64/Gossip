class WelcomeController < ApplicationController
  
  def index_welcome	
  	@firstname = params[:first_name]

  	@gossips = Gossip.all
	end

 	def index_link_to_gossip
 		@id_gossip = params[:gossip_id]
 	end

 	def index_link_to_author
 		@author_id = params[:author_id]

 	end
  

end