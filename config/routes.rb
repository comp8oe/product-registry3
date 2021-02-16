Rails.application.routes.draw do
  root 'products#index'
  resources :abcs
  resources :seihinns
  resources :product3s
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
