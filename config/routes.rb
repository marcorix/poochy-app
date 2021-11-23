Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dogs/map', to: 'dogs#map'
  resources :dogs do
    resources :bookings
  end
  resources :users, only: [ :show ]
end
