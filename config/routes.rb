Rails.application.routes.draw do
  root 'users#show'

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  resources :users

  resource :cart

  resources :orders do
    resources :order_items
  end

  resources :products
end
