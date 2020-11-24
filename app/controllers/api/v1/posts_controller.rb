module Api
  module V1
    class PostsController < ApiController
      def index
        @posts = Post.where("user_id = :user_id", user_id: 3).paginate(page: 1)
      end
    end
  end
end
