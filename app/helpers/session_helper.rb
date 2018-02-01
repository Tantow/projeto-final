module SessionHelper
	def log_in(user) 
	  session[:user_id] = user.id 
	  redirect_to user_path(id: user.id)
  end

  def current_user
    nil || User.find_by(id: session[:user_id])  
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session delete(:user_id)
    redirect_to login path
  end

  def logged_user
    if logged_in?
      flash[:alert] = "Oops! Não permitido."
        redirect_to current_user
    end
  end

  def user_not_logged
    if !logged_in?
      flash[:alert] = "Por favor, faça login!"
        redirect_to login_path
    end
  end
      
end
