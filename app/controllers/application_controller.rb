# frozen_string_literal: true

# Parent class that all subsequent controller's inherit from
class ApplicationController < ActionController::API
  before_action :authenticate_request
    attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end






#   def require_login
#     unless current_user
#       flash[:error] = "LOG IN FIRST PLEASE"
#       redirect_to (root_url)
#       return true
#     end
#   end

#   helper_method :current_user
#   def current_user
#     if session[:user_id]
#       @current_user ||= User.find(session[:user_id])
#     else
#       @current_user = nil
#     end
#   end
# end

# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception
# end
