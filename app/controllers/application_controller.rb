# frozen_string_literal: true

# Parent class that all subsequent controller's inherit from
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
