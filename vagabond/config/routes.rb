Rails.application.routes.draw do

  root to: "index#index"
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy"
  get "/users/secret", to: "users#show", as: "secret"

end
