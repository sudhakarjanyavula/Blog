Rails.application.routes.draw do
  get 'persons/index'

  root "articles#index"
  

  get "/persons", to: "persons#index"
  get "/users", to: "users#index"

  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  resources :articles do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
