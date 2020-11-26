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
