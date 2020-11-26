module Api
  module V1
    class UsersController < ApiController
      # def index
      #   @posts = Post.all.order(created_at: :desc)
      #   # .paginate(page: 1)
      # end

      def create
        log(request.body.read)
      end
    end
  end
end
