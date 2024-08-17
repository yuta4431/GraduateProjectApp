Rails.application.routes.draw do
  get 'programs/index'
  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logouｔ

  resources :users, only: %i[new create]
  resources :programs, only: %i[index]
  
  root 'programs#index'
end
