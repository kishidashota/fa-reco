Rails.application.routes.draw do


  devise_for :users, controllers: {registrations: 'users/registrations' }
  root to: 'users#index'
  resources :products
  resources :users, only: [:index, :edit, :new, :update, :show]
    resources :messages, only: [:index, :create, :new, ]

 
  
  
  
  
  
end
