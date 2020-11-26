module Api
  module V1
    class UsersController < ApiController
      # def index
      #   @posts = Post.all.order(created_at: :desc)
      #   # .paginate(page: 1)
      # end

      def create
        puts request.body.read
        logger.info(request.body.read)
      end
    end
  end
end
