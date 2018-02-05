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
    session.delete(:user_id)
    redirect_to login_path
  end

  def logged_user
    if logged_in?
      flash[:alert] = "Oops! Não permitido."
        redirect_to user_path(id: current_user.id)
    end
  end

  def user_not_logged
    if !logged_in?
      flash[:alert] = "Por favor, faça login!"
        redirect_to login_path
    end
  end

  def right_user_or_admin
    	if !current_user.admin && current_user != @user
			flash[:alert] = "Não permitido"			
			redirect_to user_path(id: current_user.id)
		
		end			
	end

  def correct_user
    if current_user != @user
				flash[:notice] = "Não permitido"
				redirect_to user_path
			end
	end

  def not_admin
    if current_user.admin != true
    redirect_to feed_path
    end
  end


  def pmo
    if current_user.pmo == true
      flash[:alert] = "Não permitido"			
      redirect_to users_path
    end
  end

  def admin
    if current_user.admin == true
      permit
    end
  end  







      
end
