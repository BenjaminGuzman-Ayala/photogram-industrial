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
  get ":username/liked" => "users#liked", as: :liked

  get "/:username" => "users#show", as: :user
  get "/:username/following" => "users#following", as: :following
  get "/:username/followers" => "users#followers", as: :followers
  get "/:username/feed" => "users#feed", as: :feed

  # get ":username/feed" => "users#show", as: :user
  # get ":username/followers" => "users#show", as: :user
  # get ":username/following" => "users#show", as: :user

  # Defines the root path route ("/")
  # root "articles#index"
end
