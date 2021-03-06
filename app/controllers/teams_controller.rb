class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy, :rota]


  before_action :user_not_logged, only: [:index, :new, :create, :update, :edit, :destroy]
  before_action :not_admin, only: [:new, :create, :update, :edit, :destroy]



  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
    @team = Team.new
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
      @t = UserTeam.where(team_id: params[:id])
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  #funcao que edita o time, adc um novo dev.
  def  team_edit
    @team = Team.find_by(id: params[:team_id])
    current_user.likes.build(team_id: params[:team_id]).save

    # respond_to do |format|
    #   format.html { redirect_to feed_path }
    #   format.js
  end
  #end

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

  def routes66
    y = UserTeam.find_by(user_id: params[:tiago], team_id: params[:id])
    y.destroy

    @team = Team.find_by(id: params[:renato])

    redirect_to @team
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Time criado com sucesso!' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Time alterado com sucesso!' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Time excluído com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:teamname, :user_id)
    end
end
