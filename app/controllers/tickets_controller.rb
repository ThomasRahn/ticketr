class TicketsController < ApplicationController
  
  def index
    @tickets = Ticket.all
  end

  def show
  	@ticket = Ticket.find(params[:id])
  end

  def new
  	@ticket = Ticket.new
  end

  def create
  	@ticket = Ticket.new(post_params)

  	if(@ticket.save)
  		redirect_to @ticket
  	else
  		render 'new'
  	end
  end

  def complete
  	Ticket.find(params[:id]).complete

  	render 'index'
  end

  private def post_params
  	params.require(:ticket).permit(:task, :description)
  end
end
