Rails.application.routes.draw do
  root "photos#index"
  #get "/users/:id" => "users#show", as: :user
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  # resources :users, only: :show
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/:username" => "users#show", as: :user

  # Defines the root path route ("/")
  # root "articles#index"
end
