
Rails.application.routes.draw do
  


  root 'tops#index'
  devise_for :shops, controllers: {registrations: 'shops/registrations'}
  devise_for :users, controllers: {registrations: 'users/registrations' }

  resources :rooms, only: [:show, :create] do
    resources :messages, only: [:index, :show, :create]
    namespace :api do
      resources :messages, only: :index,  defaults: { format: 'json' }
    end
  end
  resources :products
  resources :users, only: [:index, :edit, :new, :update, :show]  
  resources :shops, only: [:index, :edit, :new, :update, :show]  
  resources :searches,only:[:index]
end
