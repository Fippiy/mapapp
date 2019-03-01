Rails.application.routes.draw do
  devise_for :users
  root 'routes#index'
  resources :maps, only: [:index]
  resources :routes, only: [:index]
end
