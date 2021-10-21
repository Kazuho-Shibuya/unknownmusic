class SignupsController < ApplicationController
  def new
    @signup_user = User.new
  end

  def create
    @signup_user = User.new(user_params)
    if @signup_user.save
      @signup_user.send_activation_email
      flash[:info] = 'メールを確認して、アカウントを有効にしてください'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
