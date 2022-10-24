Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  resources :users, only: [:create, :destroy, :index, :show]
  resources :sessions, only: [ :destroy, :show, :create]

  resources :donations
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get "/regions", to: "regions#index"
  get "/regions/:id", to: "regions#show"
  delete "/regions/:id", to: "regions#destroy"

  
  

end
