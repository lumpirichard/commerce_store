Rails.application.routes.draw do

  root to: 'products#catalogue'

  get 'catalogue', to: 'products#catalogue'
  get 'products/catalogue'
  get 'products/cart', to: 'products#cart', as: :cart
  get 'products/:id', to: 'products#view', as: :product
  get 'products/:id/added', to: 'products#add', as: :add
  get 'products/:id/removed', to: 'products#remove', as: :remove


end
