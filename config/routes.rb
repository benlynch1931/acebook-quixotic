Rails.application.routes.draw do
  root :to => 'home#index'
  # make this a habbit to white our roots
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end

# undefined local variable or method `‘home' for #<ActionDispatch::Routing::Mapper:0x00007ffcb9b94160> (NameError)
# this was caused because of lack of consistent indentation ''"" and even farious other forms of dashes that are caused by style type in different computers

# Missing :controller key on routes definition, please check your routes. (ArgumentError)
# The main problem is that you need # instead of / in your routes.

# (brief explination )
# https://stackoverflow.com/questions/42846674/missing-controller-key-on-routes-definition-please-check-your-routes/49762666
