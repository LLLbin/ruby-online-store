Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end

  unauthenticated :user do
    devise_scope :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users
  resource  :cart
  resources :cart_items
  resources :orders
  resources :order_items
  resources :products
end
