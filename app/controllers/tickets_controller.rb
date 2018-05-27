class TicketsController < ApplicationController
  
  def index
    @tickets = Ticket.where({ is_completed: 0})
  end

  def show
  	@ticket = Ticket.includes(comments: :user).find(params[:id])
  end

  def new
  	@ticket = Ticket.new
    @projects = Project.all
    @users = User.all
  end

  def create
  	@ticket = Ticket.new(post_params)

    @ticket.user_id =params[:user]
    @ticket.project_id = params[:project]

  	if(@ticket.save)
  		redirect_to @ticket.project
  	else
      @projects = Project.all
      @users = User.all
  		render 'new'
  	end
  end

  def edit 
    @ticket = Ticket.includes(:user).find(params[:id])    
    @users = User.all
  end

  def update
    @ticket = Ticket.includes(comments: :user).find(params[:id])

    @ticket.task = params[:task]
    @ticket.description = params[:description]
    @ticket.user_id = params[:user]

    @ticket.save(validate: false) 

    render :action => "show"
  end

  def complete
  	ticket = Ticket.find(params[:id])
    ticket.update(is_completed: params[:c])
  end

  private def post_params
  	params.require(:ticket).permit(:task, :description)
  end
end
