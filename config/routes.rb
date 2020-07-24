Rails.application.routes.draw do
  root to: 'restaurants#index'
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :restaurants
  resources :pizzas 
end
