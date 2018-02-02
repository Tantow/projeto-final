class ResetPasswordController < ApplicationController
  before_action:logged_user
 	
  def seach
  end

  def recovery
    user = User.find_by(email: params[:user][:email])
    if user
      password = Passgen::generate(:lenght => 6)
      user.password = password
			user.password_confirmation = password 
			user.save
	    


      UserMailer.forget_my_password(user, password).deliver_now
      flash[:notice] = "Email com instruções de recuperação enviado"
       redirect_to login_path
    else
      flash.now[:alert] = "Usuário não encontrado"
      render "search"
    end
  end
end

			










