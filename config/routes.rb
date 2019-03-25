Rails.application.routes.draw do
  resources :comments
  resources :carts
  resources :user_ratings
  resources :listings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
