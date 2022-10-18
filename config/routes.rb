Rails.application.routes.draw do
  resources :missions
  resources :planets
  resources :scientists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/scientists', to: 'scientist#index'
  # get '/scientists/:id', to: 'scientist#show'

  # Defines the root path route ("/")
  # root "articles#index"
end
