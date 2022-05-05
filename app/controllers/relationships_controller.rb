class RelationshipsController < ApplicationController
  before_action :confirmation_logged_in_user?

  def create
    @user = User.find(params[:followed_id])
    @stats_user = User.find(params[:stats_user_id])
    current_user.follow(@user)
    respond_to do |format|
      format.html { redirect_back(fallback_location: @user) }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    @stats_user = User.find(params[:stats_user_id])
    current_user.unfollow(@user)
    respond_to do |format|
      format.html { redirect_back(fallback_location: @user) }
      format.js
    end
  end
end
