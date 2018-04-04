Rails.application.routes.draw do

  root 'projects#index'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post 'comment', to: 'comments#create'
  post 'complete', to: 'tickets#complete'

  resources :tickets
  resources :comments
  resources :sessions
  resources :users
  resources :projects
end
