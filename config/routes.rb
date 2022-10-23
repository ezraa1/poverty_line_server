Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :users
  resources :donations
  resources :sessions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
  get "/regions", to: "regions#index"
  get "/regions/:id", to: "regions#show"
  delete "/regions/:id", to: "regions#destroy"

  
  

end
