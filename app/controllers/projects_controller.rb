class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new 
  	@project = Project.new

  	@users = User.all
  end

  def create
  	@project = Project.new(post_params)

  	@project.user_id = params[:user_id]
  	
  	if(@project.save)
  		redirect_to @project
  	else
  		@users = User.all
  		render 'new'
  	end
  end

  def show
  	@project = Project.includes(:tickets).find(params[:id])
  end

	private def post_params
		params.require(:project).permit(:name, :description, :user_id)
	end
end

