Rails.application.routes.draw do

  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
  post '/restaurantpizzas/new', to: 'restaurantpizzas#create', as: 'pizzas/new'

  resources :restaurant_pizzas
  resources :pizzas do
    resources :restaurant_pizzas, :only => [:new]
  end
  resources :restaurants

end
