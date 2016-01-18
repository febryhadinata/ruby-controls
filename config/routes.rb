Rails.application.routes.draw do
  
  resources :users
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # get 'testjsonAPI' => 'users#testjsonAPI'
  
end
