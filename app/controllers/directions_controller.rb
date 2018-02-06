class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]

  before_action :user_not_logged, only: [:index, :new, :create, :update, :edit, :destroy]
  before_action :not_admin, only: [:new, :create, :update, :edit, :destroy]


  # GET /directions
  # GET /directions.json
  def index
    @directions = Direction.all
  end

  def update
    
  end



  def show

  end

  def presidencia
    @users = User.all
  end

  def gp
    @users = User.all
  end

  def financeiro
    @users = User.all
  end

  def projetos
    @users = User.all
  end

  def marketing
    @users = User.all
  end

   # Funcao que vai redirecionar o user para o relacionamento
   def rota
     # team = Team.find(params[:id])
     # user = User.find(params[:user_id])
     x = UserTeam.new
     x.user_id = params[:user_id]
     x.team_id = params[:id]
      if UserTeam.find_by(team_id: params[:id], user_id: params[:user_id])
      else
        x.save
      end

     redirect_to @team
   end

   def teste
     d = User.find(params[:user_id])
     d.admin = false if params[:user][:director] == "0"
     d.admin = true if params[:user][:director] == "1" #na checkbox 0 = false 1 = verdadeiro
     d.save

     redirect_to financeiro_path
   end

   def jeniffer
     r = User.find(params[:user_id])
     r.admin = false if params[:user][:director] == "0"
     r.admin = true if params[:user][:director] == "1" #na checkbox 0 = false 1 = verdadeiro
     r.save

     redirect_to gp_path
   end

   def pedro
     e = User.find(params[:user_id])
     e.admin = false if params[:user][:director] == "0"
     e.admin = true if params[:user][:director] == "1" #na checkbox 0 = false 1 = verdadeiro
     e.save

     redirect_to projetos_path
   end

   def bia
     w = User.find(params[:user_id])
     w.admin = false if params[:user][:director] == "0"
     w.admin = true if params[:user][:director] == "1" #na checkbox 0 = false 1 = verdadeiro
     w.save

     redirect_to presidencia_path
   end

   def mari
     i = User.find(params[:user_id])
     i.admin = false if params[:user][:director] == "0"
     i.admin = true if params[:user][:director] == "1" #na checkbox 0 = false 1 = verdadeiro
     i.save

     redirect_to marketing_path
   end

   def routes66
     y = UserTeam.find_by(user_id: params[:tiago], team_id: params[:id])
     y.destroy

     @team = Team.find_by(id: params[:renato])

     redirect_to @team
   end

  private
  def set_direction
    @direction = Direction.find(params[:id])
  end

end
