class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to @user
  end

  def show
  end
end
