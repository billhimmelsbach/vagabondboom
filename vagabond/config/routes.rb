Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/:id', to: "posts#show"

  root to: "users#splash"

  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy"

end
