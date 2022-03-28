Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/signin", to: "session#new"
  post "/signin", to: "session#create"
end
