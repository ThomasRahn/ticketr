class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(valid_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def valid_params
    params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname)
  end
end
