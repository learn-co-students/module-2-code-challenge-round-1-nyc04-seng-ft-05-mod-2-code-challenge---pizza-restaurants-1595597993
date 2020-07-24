Rails.application.routes.draw do
  #get '/restaurants', to: 'restaurants#index'
  #get '/pizzas', to: 'pizzas#index'
  
  resources :restaurants, [:index, :show]
  resources :pizzas, [:index, :show, :new, :create]
end
