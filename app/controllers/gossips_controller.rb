class GossipsController < ApplicationController

	def index
		@gossips = Gossip.all

	end


	def new


	end

	def create


		@gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11)

		if @gossip.save # essaie de sauvegarder en base @gossip
				flash[:success] = "Bravo le gossip n'a pas été créé"
		  		redirect_to gossips_path

		  		   # si ça marche, il redirige vers la page d'index du site
		  else
		  		flash[:error] = "Erreur, le gossip n'a pas été créé"
 				redirect_to new_gossip_path

		    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
		 
			end

		end
end
