module Api
  module V1
    class PostsController < ApiController
      def index
        @posts = Post.all.order(created_at: :desc)
        # .paginate(page: 1)
      end
    end
  end
end
