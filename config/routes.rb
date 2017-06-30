Rails.application.routes.draw do
  get "users/new"
  get "users/show"
  get "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  get    "/login",   to: "login#new"
  post   "/login",   to: "login#create"
  delete "/logout",  to: "login#destroy"
  root "static_pages#home"
  get  "/signup",  to: "users#new"
  resources :users
end
