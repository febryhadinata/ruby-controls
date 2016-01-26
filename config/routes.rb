Rails.application.routes.draw do
  resources :users, :brands
  root 'brands#index'
  get 'signup' => 'users#new', as: 'register'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
  # get 'testjsonAPI' => 'users#testjsonAPI'
end
