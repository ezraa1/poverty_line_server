Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  resources :users, only: [:create, :destroy, :index, :show]
  resources :sessions, only: [ :destroy, :show, :create]

  resources :donations
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # USERS_SESSION AUTHENTICATION
  post '/signup', to: 'sessions#create_account'
  get '/me', to: 'sessions#auto_login'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  
  #REGIONS GET/POST/DELETE
  get "/regions", to: "regions#index"
  get "/regions/:id", to: "regions#show"
  delete "/regions/:id", to: "regions#destroy"

  

end
