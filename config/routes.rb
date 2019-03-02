Rails.application.routes.draw do
  devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions: 'users/sessions'
  }

  root 'routes#index'
  resources :maps, only: [:index]
  resources :routes, only: [:index, :show]
  resources :users do
    collection do
      get "search"
    end
  end
end
