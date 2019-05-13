Rails.application.routes.draw do

  get '/', to: 'cnab_files#index'
  post '/upload_file', to: "cnab_files#upload_file"
  
  resources :stores, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
