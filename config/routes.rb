Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users
  resources :users
  resources :messages do
    resources :comments
  end

  post '/messages/new', to: 'messages#new'

  get '/sale_posts/new', to: 'sale_posts#new', as: 'new_sale_post'
  post '/sale_posts', to: 'sale_posts#create'

  get '/buy_posts/new', to: 'buy_posts#new', as: 'new_buy_post'
  post '/buy_posts', to: 'buy_posts#create'

  patch '/sale_posts/:id/toggle', to: 'sale_posts#toggle', as: 'sale_posts_toggle'
  patch '/sale_posts/:id/delete', to: 'sale_posts#delete', as: 'sale_posts_delete'

  patch '/buy_posts/:id/toggle', to: 'buy_posts#toggle', as: 'buy_posts_toggle'
  patch '/buy_posts/:id/delete', to: 'buy_posts#delete', as: 'buy_posts_delete'

  # patch '/purchase', to: 'users#purchase'

end
