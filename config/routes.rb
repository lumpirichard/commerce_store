Rails.application.routes.draw do

  root to: 'products#catalogue'

  get 'products/catalogue'
  get 'products/:id', to: 'products#view', as: :product
  get 'products/view'
  get 'products/:id/added', to: 'products#add', as: :add

end
