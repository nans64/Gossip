class UsersController < ApplicationController

  def new

  end

  def create

      user = User.new(
      first_name:params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:check_password],
      city_id: params[:city]
    )
    

  if User.exists?(email: params[:email]) # I think this should be `user_params[:email]` instead of `params[:email]`
      flash[:error] = "L'email n'existe pas"
    render 'new' and return
  end
  if user.save
      log_in user
      flash[:success] = 'Vous êtes connecté'
      redirect_to gossips_path    
  else
      flash[:error] = "Not working"
    render 'new'
  end
  end

end
