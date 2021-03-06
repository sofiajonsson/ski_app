Rails.application.routes.draw do
  resources :add_to_listings
  resources :add_price_to_listings
  root to: 'home#index'
  root to: "photos#index"
  resources :photos

  resources :comments
  resources :carts
  resources :user_ratings
  resources :listings
  resources :users
  resources :home

  get "/login", to: "sessions#new"
  post '/login', to: "sessions#create"
  get "/home", to: "home#index"
  post "/add_to_cart", to: "carts#new"
   delete '/logout', to: 'sessions#destroy'
  get "/users_cart", to: "carts#users_cart"
  get "/checkout", to: "carts#checkout"
  post "/clear_cart", to: "carts#clear_cart"
  post "/comments/new", to: "comments#create"
  get "/home", to: "home#index"

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
