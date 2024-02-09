Rails.application.routes.draw do
  namespace :admin do
    resources :reviews
    resources :products
    resources :invoices
    resources :categories
    resources :users

    root to: "reviews#index"
  end
  get 'cart/index'
  get 'products/:id', to: 'product#index'
  get 'invoice/index'
  post 'invoice/create'
  get 'invoice/success'
  get 'invoice/cancel'
  post 'invoice/add_review'
  post 'cart/create_payment_intent'
  post 'cart/add_to_cart'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
