Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show'
  get '/pizzas', to: 'pizzas#index'
  get '/pizzas/new', to: 'pizzas#new'
  get '/pizzas/:id', to: 'pizzas#show'
  post '/pizzas', to: 'pizzas#create'

end
