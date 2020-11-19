# frozen_string_literal: true


# Controller in charge of routes involving Acebook posts
class PostsController < ApplicationController

  # Get post info from database
  def index
    @posts = Post.view_all
  end

  # puh info to database
  def create
    # push new post to database
    @new_post = Post.create(message: params[:message])
    # refresh @posts to include new record in database
    index
    # re-render the page as there's new info to list from @posts
    render 'index'
  end

# delete info from database
  def destroy
    Post.delete(id: params[:id])

    # change the url, runs through controller to the view
    redirect_to '/posts'
  end

end
