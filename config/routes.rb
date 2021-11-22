Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  resources :users
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'
end
