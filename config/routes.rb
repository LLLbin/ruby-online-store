Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new'
  end

  resources :users
  resource  :cart
  resources :cart_items
  resources :orders
  resources :order_items
  resources :products
end
