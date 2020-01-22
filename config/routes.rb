Rails.application.routes.draw do
  resources :products
  devise_for :users
  
  
  root to: 'users#index'
  resources :users, only: [:index, :edit, :new, :update]
    resources :messages, only: [:index, :create, :new, ]
end
