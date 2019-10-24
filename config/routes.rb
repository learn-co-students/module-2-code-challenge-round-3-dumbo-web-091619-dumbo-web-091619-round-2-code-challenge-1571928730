Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:show, :create, :new, :edit]
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'


end
