# frozen_string_literal: true


# Controller in charge of routes involving Acebook posts
class PostsController < ApplicationController
  def index
    @posts = Post.view_all
    puts 'REACHED THE CONTROLLER'
  end
end
