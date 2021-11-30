Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/presentation'
  get 'pages/contact'
  root 'pages#index'
  devise_for :users
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
