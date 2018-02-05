class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  
=======
>>>>>>> pedro

  before_action :user_not_logged, except: [:new, :create]
  before_action :logged_user, only: [:new, :create]
  before_action :right_user_or_admin, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:update]

  # GET /directions
  # GET /directions.json
  def index
    @directions = Direction.all
  end

  def show
  end

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



  private
  def set_direction
    @direction = Direction.find(params[:id])
  end
end
