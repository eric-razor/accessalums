class ProjectsController < ApplicationController
  # before_action :authorized

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.student_id = session[:student_id]
    if @project.valid?
      @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    #redirect_to project issues redirecting
  end

  def destroy

  end

  private
  def project_params
    params.require(:project).permit(:name,:url_link)
  end
end
