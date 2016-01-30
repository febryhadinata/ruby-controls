Rails.application.routes.draw do
  root 'dashboards#index'

  resources :users, :brands

  # Login / Signup process
  get 'signup' => 'users#new', as: 'register'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # get 'testjsonAPI' => 'users#testjsonAPI'
end
