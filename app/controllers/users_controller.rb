class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy
                                          following followers]
  before_action :correct_user,   only: %i[edit update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end

  def show
    # Usersコントローラにリクエストが正常に送信されると、params[:id]の部分はユーザーidの1に置き換わる
    # id: '1'は /users/:idから取得した値
    # それによってid=1のユーザーを検索できる
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
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
      flash[:info] = 'アカウントの有効化が完了しているかメールを確認してください'
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
    @title = 'Following'
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

  # params[:user]の代わりで、任意の属性のみ許可する。（admin="1")を渡されて、管理者権限を奪われないため
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
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
end
