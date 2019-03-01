Rails.application.routes.draw do
  root 'routes#index'
  resources :maps, only: [:index]
  resources :routes, only: [:index]
end
