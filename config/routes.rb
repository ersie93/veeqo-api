Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  root to: 'orders#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do

  end

  resources :orders_to_products, only: [:create, :update, :destroy]
  resources :orders, only: [ :show, :update ]

end
