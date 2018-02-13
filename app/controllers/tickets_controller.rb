class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @tickets.as_json
  end
end
