# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :authenticate
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create]
  #   end
  # end

  post('api/v1/users', to: 'users#create')

  root :to => 'home#index'
  # make this a habbit to white our roots
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/posts', to: 'posts#index')
  # go to PostsController
  # go to index function
  # run index function
  # go to index.html.erb
  resources :posts

  # post('/posts', to: 'posts#create')
  # go to PostsController
  # go to create function
  # run create function
  # Push create post to database | LINE:11
  # set @new_post to nil ready for the form
  # run index(again)
  # @posts = select from database -> this has NEW records (because of insertion)
  # render index.html.erb with the SAME info in @posts

  delete('/posts/:id', to: 'posts#destroy')

  post 'authenticate', to: 'authentication#authenticate'
end


# undefined local variable or method `‘home' for #<ActionDispatch::Routing::Mapper:0x00007ffcb9b94160> (NameError)
# this was caused because of lack of consistent indentation ''"" and even farious other forms of dashes that are caused by style type in different computers

# Missing :controller key on routes definition, please check your routes. (ArgumentError)
# The main problem is that you need # instead of / in your routes.

# (brief explination )
# https://stackoverflow.com/questions/42846674/missing-controller-key-on-routes-definition-please-check-your-routes/49762666
