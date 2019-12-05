Rails.application.routes.draw do
  root to: 'products#catalogue'

  get 'products/catalogue'
  get 'products/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
