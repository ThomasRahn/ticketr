class CommentsController < ApplicationController

  def create
  	ticket = params[:ticket_id]
  	user = session[:user_id]
  	comment = params[:comment]

  	@comment = Comment.new({ ticket_id: ticket, user_id: user, comment: comment})

  	if(@comment.save)
  		render json: @comment
  	else
  		# render json: 
  	end
  end
end
