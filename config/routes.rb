Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/presentation'
  get 'pages/contact'
  root 'pages#index'
  resources :profiles
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/create'
  get 'items/edit'
  get 'items/update'
  get 'items/delete'
  devise_for :users
end
