Rails.application.routes.draw do
  resources :comments
  resources :carts
  resources :user_ratings
  resources :listings
  resources :users
  get "/login", to: "sessions#new"
  post '/login', to: "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
