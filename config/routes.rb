Rails.application.routes.draw do

  root 'cnab_files#index'

  resources :transactions
  resources :transaction_types
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
