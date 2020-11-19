# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/posts', to: 'posts#index')
  # go to PostsController
  # go to index function
  # run index function
  # go to index.html.erb
  resources :posts

  post('/posts', to: 'posts#create')
  # go to PostsController
  # go to create function
  # run create function
  # Push create post to database | LINE:11
  # set @new_post to nil ready for the form
  # run index(again)
  # @posts = select from database -> this has NEW records (because of insertion)
  # render index.html.erb with the SAME info in @posts

  delete('/posts/:id', to: 'posts#destroy')

end
