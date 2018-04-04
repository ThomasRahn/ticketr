class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
  	@project = Project.includes(:tickets).find(params[:id])
  end
end
