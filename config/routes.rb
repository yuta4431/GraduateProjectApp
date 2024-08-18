Rails.application.routes.draw do
  get 'hosts/index'
  get 'hosts/new'
  get 'hosts/create'
  get 'hosts/edit'
  get 'hosts/update'
  get 'hosts/destroy'
  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logout

  resources :users, only: %i[new create]
  resources :programs
  resources :hosts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
