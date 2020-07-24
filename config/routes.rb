Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/:id', to: 'restaurants#show'

  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/:id', to: 'pizzas#show'
  # get '/pizzas/new', to: 'pizzas#new'
  # post '/pizzas'

  resources :restaurants
  resources :pizzas
  resources :restaurant_pizzas

end
