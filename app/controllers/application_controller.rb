class ApplicationController < ActionController::Base
  
  #このコードがあると、Railsで生成されるすべてのフォームとAjaxリクエストにセキュリティトークンが自動的に含まれる。セキュリティトークンがマッチしない場合には例外がスローされる。
  before_action :configure_permitted_parameters, if: :devise_controller?# deviseコントローラーにストロングパラメータを追加する    
  protected

  def configure_permitted_parameters
  
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:user_image])
    elsif resource_class == Shop
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :genre ,:shop_image])
    else
      super
    end
    # アカウント編集の時にusernameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :profile])
  end
  # def current_shop
  #   return unless session[:shop_id]
  #   @current_shop ||= Shop.find(session[:shop_id])
  # end
end


