Rails.application.routes.draw do
  resources :users do
    resources :carts
    resources :orders
  end

  resources :orders do
    resources :order_items
  end

  resources :products
end
