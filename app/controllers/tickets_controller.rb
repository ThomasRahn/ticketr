class TicketsController < ApplicationController
  
  def index
    @tickets = Ticket.all
  end


  def show
  	@ticket = Ticket.find(params[:id])
  end

  def complete
  	Ticket.find(params[:id]).update(is_completed: true)
  end
end
