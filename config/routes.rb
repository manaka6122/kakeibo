Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "books#index"
  resources :books

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/users/edit", to: "users#edit", as: "edit_user"
  patch "/users", to: "users#update", as: "user"
  get "/signin", to: "session#new"
  post "/signin", to: "session#create"
  get "/signout", to: "session#destroy"
end
