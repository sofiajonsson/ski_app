Rails.application.routes.draw do
  resources :add_to_listings
  resources :add_price_to_listings
  root to: 'home#index'

  resources :comments
  resources :carts
  resources :user_ratings
  resources :listings
  resources :users
  get "/login", to: "sessions#new"
  post '/login', to: "sessions#create"
  post "/add_to_cart", to: "carts#new"
  get "/users_cart", to: "carts#users_cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
