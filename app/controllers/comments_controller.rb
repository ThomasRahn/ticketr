class CommentsController < ApplicationController

  def create
  	ticket = params[:ticket_id]
  	user = session[:user_id]
  	comment = params[:comment]

  	@comment = Comment.new({ ticket_id: ticket, user_id: user, comment: comment})
    @comment.user = User.find(session[:user_id])

  	if(@comment.save)
  		render json: @comment
  	else
  		render json: { "success" => false }
  	end
  end
end
