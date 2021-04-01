class MicropostsController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy]

  def create
    if micropost_params[:search_result_id].blank?
      flash.now[:danger] = '曲を検索してください'
      @micropost = Micropost.new
      @feed_items = []
      render 'home/index'
    else
      spotify_api = SpotifyApi.new
      access_token = spotify_api.get_access_token
      uri_id = spotify_api.get_uri_id(micropost_params[:search_result_id])
      @search_result = spotify_api.search(access_token, uri_id)
      share_params = {}
      share_params['song'] = @search_result['name']
      share_params['artist'] = @search_result['artists'][0]['name']
      share_params['listening_url'] = @search_result['preview_url']
      share_params['content'] = micropost_params[:content]
      @micropost = current_user.microposts.build(share_params)
      if @micropost.save
        flash[:success] = '投稿しました'
        redirect_to home_index_url(current_user)
      else
        @feed_items = []
        render 'home/index'
      end
    end
  end

  def destroy
    @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost.destroy
    flash[:success] = '投稿は削除されました'
    redirect_back fallback_location: root_url
  end

  def index
    sort_except = Micropost.except(:order)
    count_like = Like.group(:micropost_id).order(Arel.sql('count(micropost_id) desc')).limit(10).pluck(:micropost_id)
    @all_ranks = sort_except.find(count_like)
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :search_result_id)
  end
end
