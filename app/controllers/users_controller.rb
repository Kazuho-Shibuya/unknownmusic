class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy
                                          following followers home]
  before_action :correct_user,   only: %i[edit update]
  before_action :admin_user,     only: :destroy
  before_action :check_test_user, { only: %i[edit update destroy] }
  before_action :set_micropost, only: %i[home]
  PER = 20

  def index
    @users = User.where(activated: true).page(params[:page]).per(PER).search(params[:search])
  end

  def show
    # Usersコントローラにリクエストが正常に送信されると、params[:id]の部分はユーザーidの1に置き換わる
    # id: '1'は /users/:idから取得した値
    # それによってid=1のユーザーを検索できる
    @user = User.find(params[:id])
    @microposts = @user.microposts.page(params[:page]).per(PER).search(params[:search])
    redirect_to(root_url) && return unless @user.activated?
  end

  def new
    # form_forで必要なUserオブジェクトの作成
    @user = User.new
  end

  def create
    # resourcesを追加したことによって、/usersへのpostリクエストはcreateアクションに送られる
    # ここで送信を受け取り、User.newを使って新しいユーザオブジェクトを作成し、
    # ユーザを保存（または保存に失敗）し、再度の送信用のユーザ登録ページを表示する
    @user = User.new(user_params)
    if @user.save
      # 保存の成功
      @user.send_activation_email
      flash[:info] = 'メールを確認して、アカウントを有効にしてください。'
      redirect_to root_url
    else
      # 保存の失敗
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = 'プロフィールを更新しました'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'ユーザを削除しました'
    redirect_to users_url
  end

  def following
    @title = 'フォロー中'
    @user  = User.find(params[:id])
    @users = @user.following.page(params[:page]).per(PER)
    render 'show_follow'
  end

  def followers
    @title = 'フォロワー'
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page]).per(PER)
    render 'show_follow'
  end

  def home
    # 検索拡張機能として.search(params[:search])を追加
    @feed_items = @feed_items.search(params[:search])
  end

  private

  # params[:user]の代わりで、任意の属性のみ許可する。（admin="1")を渡されて、管理者権限を奪われないため
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end

  # beforeフィルター

  # 正しいユーザーかどうか確認
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # 管理者かどうか確認
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  # テストユーザかどうか確認する
  def check_test_user
    @user = User.find(params[:id])
    return unless @user.email == 'test@example.com'

    flash[:notice] = 'テストユーザのため変更できません'
    redirect_to root_path
  end

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page]).per(20)
  end
end
