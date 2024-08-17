class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def not_authenticated
    redirect_to rogin_path, danger: "ログインしてください"
  end
end
