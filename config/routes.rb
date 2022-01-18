Rails.application.routes.draw do
  root 'dashboard#index'

  resources :products
  resources :warehouses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
