class ProjectsController < ApplicationController

    def new
      @project = Project.new

    end

    def show
      @project = Project.find(params[:id])
    end

    def create
      @project = Project.new(user_params)
      if @project.valid?
        @project.save
        redirect_to @project
      else
        render :new
      end
    end

    def edit

    end

    def update

    end

    def destroy

    end
end
