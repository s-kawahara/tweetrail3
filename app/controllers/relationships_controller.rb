class RelationshipsController < ApplicationController
  def create
    user_id = params[:user_id]
    if Relationship.create(following_id: current_user.id, follower_id: user_id)
      redirect_to user_path(user_id), notice: "フォローしました"
    else
      redirect_to tweets_path, notice:"フォローできませんでした"
    end
  end

  def destroy
    user_id = params[:user_id]
    if Relationship.find_by(following_id: current_user.id, follower_id: user_id).destroy
	  end
  end
end
