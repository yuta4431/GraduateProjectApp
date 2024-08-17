class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: "ユーザー登録が完了しました"
    else
      flash.now[:danger] = "ユーザー登録に失敗しました"
      render :new,  status: :unprocessable_entity
    end
  end

  def show; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
