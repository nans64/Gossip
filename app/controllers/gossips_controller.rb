class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]

  def index

  @gossips = Gossip.all

  end

  def show
    @gossip = Gossip.new
    @id_gossip = params[:id]
  end

  def new
    @gossips = Gossip.new
  end

  def create
    gossip_params = params.require(:gossip).permit(:title, :content, :user_id)
    @gossip = Gossip.new(gossip_params)
    
		if @gossip.save # essaie de sauvegarder en base @gossip
				flash[:success] = "Bravo le gossip a été créé"
		  		redirect_to gossips_path

		  		   # si ça marche, il redirige vers la page d'index du site
		  else
		  		flash[:error] = "Erreur, le gossip n'a pas été créé"
 				redirect_to new_gossip_path

		    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
		 
		  end
		
  end

  def edit
    @gossips = Gossip.find(params[:id])
  end

  def update

  @gossips = Gossip.find(params[:id])
  if @gossips.user.id == current_user.id
  	gossip_params = params.require(:gossip).permit(:title, :content)
  	@gossips.update(gossip_params)

    if @gossips.update(gossip_params)
      flash[:success] = "Bravo le gossip a pas été mise à jour"
      redirect_to gossips_path
    else
      flash[:error] = "Erreur, le gossip n'a pas été modifié"
      render :edit
    end
  end

  end

  def destroy
  	  @gossips = Gossip.find(params[:id])
      if @gossips.user.id == current_user.id
  	  @gossips.destroy
  	  flash[:success] = "Bravo le gossip a été supprimé ! BYE BYE GOSSIP DE MERDEEEEEEEEEEEEEEEEEEEEEEEE"
  	  redirect_to gossips_path
  end
  end

end

