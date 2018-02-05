class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_action :user_not_logged, except: [:new, :create]
  before_action :logged_user, only: [:new, :create]
  before_action :right_user_or_admin, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:update]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @teams = Team.all
  end

  # GET /projects/new
  def new
    @project = Project.new
    @teams = Team.all
  end

  
  # GET /projects/1/edit
  def edit
    @teams = Team.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Projeto criado com sucesso' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Projeto atualizado com suscesso' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def rota
    x = Teamproject.new
    x.team_id = params[:team_id]
    x.project_id = params[:id]
     if Teamproject.find_by(project_id: params[:id], team_id: params[:team_id])
     else
       x.save
     end

    redirect_to @project
  end


  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Projeto arquivado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :deadline, :pmo, :manager, :description, :team_id)
    end
end
