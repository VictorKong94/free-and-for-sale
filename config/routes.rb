Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'
  #devise_for :users
  #resources :users

  get '/buy_posts/new', to: 'buy_posts#new'
  post '/buy_posts/create', to: 'buy_posts#create'

  get '/sale_posts/new', to: 'sale_posts#new'
  post '/sale_posts/create', to: 'sale_posts#create'

  #still need to add routes for patching items when they are bought or sold

  # patch '/purchase', to: 'users#purchase'

end
