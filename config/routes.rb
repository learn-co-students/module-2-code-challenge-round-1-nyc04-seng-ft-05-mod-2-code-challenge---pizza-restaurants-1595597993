Rails.application.routes.draw do
  resources :pizza_restaurants
  resources :restaurants
  resources :pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
end
