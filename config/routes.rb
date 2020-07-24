Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas
  
  get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/:id', to: 'pizzas#show', as: :pizza
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get '/pizzas/new', to: 'pizzas#new'

end
