class LikesController < ApplicationController

  before_action :find_post
  before_action :find_like, only: [:destroy]
  def create
  	if already_liked?
	flash[:notice] = "Vous ne pouvez pas liker le Gossip #{params[:gossip_id]}"
    redirect_to gossips_path

	else
    @gossip.likes.create(user_id: current_user.id)
    flash[:success] = "Vous avez liké le Gossip #{params[:gossip_id]}"
    redirect_to gossips_path
  	end
  end

  private

  def find_post
    @gossip = Gossip.find(params[:gossip_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, gossip_id:
    params[:gossip_id]).exists?
  end

   def destroy
  if !(already_liked?)
    flash[:notice] = "Cannot unlike"
  else
    @like.destroy
  end
  redirect_to gossips_path
  end

  def find_like
   @like = @gossip.likes.find(params[:id])
  end

end