class MicropostsController < ApplicationController
  require './app/modules/spotify_api'

  before_action :logged_in_user, only: %i[create destroy]
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    spotify_api = Spotify_api.new
    access_token = spotify_api.get_access_token
    @search_result = spotify_api.search_id(access_token, micropost_params[:search_result_id])
    if @micropost.save
      flash[:success] = '投稿しました'
      redirect_to home_user_url(current_user)
    else
      @feed_items = []
      render 'users/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = '投稿は削除されました'
    redirect_to request.referer || root_url
  end

  def index
    sort_except = Micropost.except(:order)
    count_like = Like.group(:micropost_id).order(Arel.sql('count(micropost_id) desc')).limit(10).pluck(:micropost_id)
    @all_ranks = sort_except.find(count_like)
  end

  private

  def micropost_params
    params.require(:micropost).permit(:song, :artist, :listening_url, :content, :search_result_id)
  end

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end
end
