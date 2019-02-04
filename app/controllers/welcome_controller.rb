class WelcomeController < ApplicationController
  
  def index_welcome	
  	@first_name = params[:first_name]
  	# @gossip_title = Gossip.all.length.times do |g, i|
  	#	g.find(i).title
  	@gossip_title = Gossip.find(params[:title])
  	end
  	
  end

end
