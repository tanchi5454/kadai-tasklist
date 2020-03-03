Rails.application.routes.draw do
  root to: 'tasks#index'
  
  resources :sessions, only: [:new]
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
