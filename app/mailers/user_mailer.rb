class UserMailer < ApplicationMailer
  def forget_my_password(user, password)
		@user = user
			@password = password
	
		mail to: @user.email, subject: "Recuperacao de Senha"


	end



end
