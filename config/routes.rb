Rails.application.routes.draw do
  get 'index' => 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  delete 'log_out' => 'sessions#destroy'



  root 'home#index'
end
