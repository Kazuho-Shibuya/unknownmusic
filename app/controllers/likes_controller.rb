class LikesController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    return if @micropost.favorite?(current_user)

    @micropost.favorite(current_user)
    @micropost.reload
    respond_to do |format|
      format.html { redirect_to request.referer || root_url }
      format.js
    end
  end

  def destroy
    @micropost = Like.find(params[:id]).micropost
    return unless @micropost.favorite?(current_user)

    @micropost.unfavorite(current_user)
    @micropost.reload
    respond_to do |format|
      format.html { redirect_to request.referer || root_url }
      format.js
    end
  end
end
