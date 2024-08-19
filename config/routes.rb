Rails.application.routes.draw do
  resources :users, only: %i[new create]
  # Defines the root path route ("/")
  # root "articles#index"
end
