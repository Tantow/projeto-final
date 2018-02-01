class SessionController < ApplicationController
  def new
  end
  

  def create
  user = User.find_by(email: params[:session][:email])
	  if user && user.authenticate(params[:session][:password])
	    log_in user
	  else
	    flash.now[:alert] = "Usuário ou senha incorretos."
	    render "new"
	  end



  end

  def destroy
  log_out

  end

end
