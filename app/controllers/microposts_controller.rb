class MicropostsController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy]
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = '投稿しました'
      redirect_to home_url
    else
      @result_artist_name = @micropost.artist
      @result_track = @micropost.song
      @result_listening_url = @micropost.listening_url
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
    params.require(:micropost).permit(:song, :artist, :listening_url, :content)
  end

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end
end
