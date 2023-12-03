Rails.application.routes.draw do
  root 'users#show'

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  resources :users
  resource  :cart
  resources :cart_items
  resources :orders
  resources :order_items
  resources :products
end
