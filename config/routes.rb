Rails.application.routes.draw do

  devise_for :users
  get 'home' => 'home#index'
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :carts, only: [:index]
end
