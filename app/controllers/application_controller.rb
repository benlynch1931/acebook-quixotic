# frozen_string_literal: true

# Parent class that all subsequent controller's inherit from
class ApplicationController < ActionController::Base
  # before_action :require_login
  #
  # def require_login
  #   unless current_user
  #     flash[:error] = "LOG IN FIRST PLEASE"
  #     redirect_to users_url
  #   end
  # end

  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end

# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception
# end
