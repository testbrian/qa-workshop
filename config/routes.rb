Rails.application.routes.draw do

  devise_for :users
  get 'home' => 'home#index'
  root 'home#index'
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :carts, only: [:index] do
    post 'add_book', on: :member
    post 'remove_book', on: :member
  end

  resources :contact_requests, only: [:new, :create]
  resources :orders
end
