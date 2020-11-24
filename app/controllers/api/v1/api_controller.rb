module Api
  module V1
    class ApiController < ActionController::Base
      # set an method to execute before executing an action
      before_action :check_basic_auth
      # override provided method by `skipping` it
      # skip_before_action :verify_authenticity_token

      private

      # method to check authorization header is sent
      def check_basic_auth
        # unless there is an auth header present, run the code
        unless request.authorization.present?
          # respond with provided header (status: 401)
          head :unauthorized
          # stop executing the method
          return
        end

        # authenticating user via email and password
        # authenticating using http_basic as opposed to an API key.
        # https://rapidapi.com/blog/convert-rails-app-api/ STEP1: AUTH
        # this is a block, not a iteration taking in details as parameters
        authenticate_with_http_basic do |email, password|
          # find_by, checks column data and returns record OR nil
          user = User.find_by(email: email.downcase)

          # check email and password are correct
          if user && user.authenticate(password)
            # set current user
            @current_user = user
          else
            # respond with provided header (status: 401)
            head :unauthorized
          end
        end
      end

      # for viewing current_user outside the class
      def current_user
        @current_user
      end

    end
  end
end
