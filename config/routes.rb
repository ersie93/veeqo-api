Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  root to: 'orders_to_products#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do

  end

  resources :orders_to_products, only: [:new, :update, :destroy]
  resources :orders, only: [ :show, :update]
  post 'orders_to_products/new' => 'orders_to_products#create'

end
