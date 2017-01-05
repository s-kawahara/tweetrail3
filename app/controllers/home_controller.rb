class HomeController < ApplicationController
  # ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: :show
  def index
    if user_signed_in?
      redirect_to tweets_path
    end
  end

  def show

    @tweets = @user.tweets

  end
end
