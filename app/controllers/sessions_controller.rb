class SessionsController < ApplicationController
  before_action :authenticate_user_on, only: [:new]

  def new
  end

  def create

    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'Vous êtes connecté'
      redirect_to gossips_path
    else
      flash[:error] = "Le mot de passe et l'email ne correspondent pas"
      redirect_to new_session_path
    end
  end

  def destroy
  	  session.delete(:user_id)
  	  flash[:success] = 'Vous avez été déconnecté'
  	  redirect_to new_session_path
  end

end
