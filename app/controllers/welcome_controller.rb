class WelcomeController < ApplicationController
  
  def index_welcome	
  	@firstname = params[:first_name]

  	@gossips = Gossip.all


  	end
  	
  

end
