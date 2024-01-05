Rails.application.routes.draw do
  resources :recipes
  get '/recipes/user/:user_id', to: 'recipes#filter'
  get '/recipes/search/:dish', to: 'recipes#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
