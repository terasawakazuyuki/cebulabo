Rails.application.routes.draw do
  resources :others
  resources :mactans
  resources :cities

  root to: 'hotels#index'
  resources :hotels, only: :index
  resources :blogs


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
