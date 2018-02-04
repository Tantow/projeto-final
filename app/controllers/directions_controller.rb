class DirectionsController < ApplicationController
  def presidencia
  end

  def gp
  end

  def financeiro
  end

  def projetos
  end

  def marketing
  end

  # Funcao que vai redirecionar o user para o relacionamento
  def pmo
    # team = Team.find(params[:id])
    # user = User.find(params[:user_id])
    x = UserTeam.new
    x.user_id = params[:user_id]
    x.team_id = params[:id]
     if UserTeam.find_by(team_id: params[:id], user_id: params[:user_id])
     else
       x.save
     end
   end
end
