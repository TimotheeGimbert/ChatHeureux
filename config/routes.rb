Rails.application.routes.draw do
  get 'join_table_item_orders/show'
  get 'item_pictures/create'
  get 'pages/index'
  get 'pages/presentation'
  get 'pages/contact'
  get 'pages/administration'
  
  resources :profiles

  root 'pages#index'
  resources :orders, only: [:show, :new, :create]
  resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  devise_for :users
  resources :users
  resources :carts
  resources :join_table_item_carts
  resources :join_table_item_orders
  resources :items, only: [:show] do
    resources :item_pictures, only: [:create]
  end
  resources :categories, only: [:new, :create, :update]

  # get '*path' => redirect('/404.html')
end
