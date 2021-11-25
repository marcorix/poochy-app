Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dogs/map', to: 'dogs#map'
  resources :dogs do
    resources :bookings, only: [ :new, :create ,:show ]
  end
  resources :users, only: [ :show ]
  resources :bookings, only: [ :index ] do
    member do
      get :accept
      get :reject
    end
  end
end
