class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    user = current_user
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end
end
