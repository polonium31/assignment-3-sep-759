Rails.application.routes.draw do
  root 'products#index'
  get 'products/:id', to: 'products#details'
end