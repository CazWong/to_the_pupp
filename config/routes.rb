Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :puppies do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:edit, :update, :destroy] do
    member do
      patch "accept"
      patch "decline"
    end
  end
  get '/my_bookings', to: 'dashboard#my_bookings', as: :my_bookings
  get '/my_puppies', to: 'dashboard#my_puppies', as: :my_puppies
end
