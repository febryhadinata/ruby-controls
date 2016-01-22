Rails.application.routes.draw do

  resources :users
  root 'material#index'
  get 'signup' => 'users#new', as: 'register'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'dashboard' => 'material#show'
  delete 'logout' => 'sessions#destroy'
  # get 'testjsonAPI' => 'users#testjsonAPI'

end
