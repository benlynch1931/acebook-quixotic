# frozen_string_literal: true


# Controller in charge of routes involving Acebook posts
class PostsController < ApplicationController
  def index
    @posts = Post.view_all
  end

  def create
    @post = Post.create(message: params[:message] )
    puts 'Creating me now!!!!'
  end

end
