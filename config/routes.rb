Rails.application.routes.draw do
  get 'archives/index'
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "posts#index"
end
