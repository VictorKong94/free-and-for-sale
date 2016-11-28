Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users
  resources :users
  resources :messages do
    resources :comments
  end

  post '/messages/new', to: 'messages#new'

  get '/sale_posts/all', to: 'sale_posts#index'
  get '/sale_posts/new', to: 'sale_posts#new', as: 'new_sale_post'
  post '/sale_posts', to: 'sale_posts#create'
  get '/sale_posts/:id/edit', to: 'sale_posts#edit', as: 'edit_sale_post'
  put '/sale_posts/:id', to: 'sale_posts#update'
  patch '/sale_posts/:id/toggle', to: 'sale_posts#toggle', as: 'sale_posts_toggle'
  patch '/sale_posts/:id/delete', to: 'sale_posts#delete', as: 'sale_posts_delete'

  get '/buy_posts/all', to: 'buy_posts#index'
  get '/buy_posts/new', to: 'buy_posts#new', as: 'new_buy_post'
  post '/buy_posts', to: 'buy_posts#create'
  get '/buy_posts/:id/edit', to: 'buy_posts#edit', as: 'edit_buy_post'
  put '/buy_posts/:id', to: 'buy_posts#update'
  patch '/buy_posts/:id/toggle', to: 'buy_posts#toggle', as: 'buy_posts_toggle'
  patch '/buy_posts/:id/delete', to: 'buy_posts#delete', as: 'buy_posts_delete'

  # patch '/purchase', to: 'users#purchase'

end
