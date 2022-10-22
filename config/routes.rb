Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resources :regions, only: [ :index, :show, :destroy, :update]
  get "/regions", to: "regions#index"
  get "/regions/:id", to: "regions#show"
  delete "/regions/:id", to: "regions#destroy"
end
