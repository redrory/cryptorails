Rails.application.routes.draw do
  devise_for :users
  

  get "home/about"
  get "home/search"

  # post "/home/search" => "home/search"
  root to: 'home#index'
end
