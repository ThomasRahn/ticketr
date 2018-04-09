class CommentsController < ApplicationController

  def create
  	ticket = params[:ticket_id]
  	user = session[:user_id]
  	comment = params[:comment]

  	@comment = Comment.new({ ticket_id: ticket, user_id: user, comment: comment})
    @user = User.find(session[:user_id])

  	if(@comment.save)
  		render json: { "comment" => @comment, "username" => @user.firstname, "date" => localize(@comment.created_at, :format => :long) }
  	else
  		render json: { "success" => false }
  	end
  end

  def destroy
    comment = Comment.find(params[:id])
    user = session[:user_id]

    if comment.user_id == user then
      comment.delete
      render json: { "success" => true }
    else
      render json: { "success" => false, "error" => "Not your comment" }
    end

  end
end
