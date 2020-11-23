# frozen_string_literal: true


# Controller in charge of routes involving Acebook posts
class PostsController < ApplicationController

  # Get post info from database
  def index
    # require_login
    return if require_login
    # @posts = Post.view_all
    @posts = Post.all.order(created_at: :desc)
  end

  # puh info to database
  def create
    # push new post to database
    @new_post = Post.create(message: params[:message].gsub("'", "''"), created_at: Time.now, updated_at: Time.now, user_id: session[:user_id])
    # refresh @posts to include new record in database
    # index
    # re-render the page as there's new info to list from @posts
    redirect_to '/posts'
  end

# delete info from database
  def destroy
    # Post.delete(id: params[:id])
    Post.destroy(params[:id])
    # change the url, runs through controller to the view
    redirect_to '/posts'

    # index
    # render 'index'
  end

end
