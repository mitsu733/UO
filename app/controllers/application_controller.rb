class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit]

  def after_sign_in_path_for(resource)
    articles_new_path  # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end

end
