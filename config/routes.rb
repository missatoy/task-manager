Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  resources :tasks
  # Defines the root path route ("/")
  # root "articles#index"
end
