Rails.application.routes.draw do
  

  get "home/about"
  get "home/search"

  # post "/home/search" => "home/search"
  root "home#index"
end
