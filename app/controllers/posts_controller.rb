class PostsController < ApplicationController
  def index
    @posts = Post.view_all
    puts 'REACHED THE CONTROLLER'
  end
  
end
