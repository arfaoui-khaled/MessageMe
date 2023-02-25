Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "chatroom#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  post "messages", to: "messages#create"

  mount ActionCable.server, at: '/cable'
  # Defines the root path route ("/")
  # root "articles#index"
end
