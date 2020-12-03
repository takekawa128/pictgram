Rails.application.routes.draw do
  get 'test01/index'
  get 'pages/test01'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/test'
  get 'test01/test'
  get 'test01/help'
  
  resources :users
end
