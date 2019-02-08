module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

    # Returns the current logged-in user (if any).
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def authenticate_user
    unless current_user
      flash[:alert] = "Connectez vous d'abord"
      redirect_to new_session_path
    end
  end

  def authenticate_user_on
  	if current_user
      flash[:success] = "Vous êtes déjà connecté !"
      redirect_to gossips_path 		
  	end
  end
end
