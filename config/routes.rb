Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'

  resources :pizzas
  resources :restaurants
  resources :pizza_restaurants
end
