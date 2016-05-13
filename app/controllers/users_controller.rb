class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def signin
  end

  private
  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets)
  end

end
