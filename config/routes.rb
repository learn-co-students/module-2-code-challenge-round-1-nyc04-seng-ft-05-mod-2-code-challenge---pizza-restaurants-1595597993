Rails.application.routes.draw do
  resources :pizzas
  resources :restaurants
  resources :restaurant_pizzas
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
