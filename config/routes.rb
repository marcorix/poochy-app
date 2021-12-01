Rails.application.routes.draw do
  get 'favorites/update'
  get 'favorites', to: 'favorites#index'
  devise_for :users
  root to: 'pages#home'
  get 'dogs/map', to: 'dogs#map'

  resources :dogs do
    resources :bookings, only: [ :new, :create, :show ]
  end

  resources :users, only: [ :show ] do
    resources :reviews, only: [ :new, :create ]
    get '/profile', to: 'users#profile'
    get '/dashboard', to: 'users#dashboard'
  end

  resources :bookings, only: [ :index ] do
    member do
      get :accept
      get :reject
    end

  end

  resources :bookings, only: [ :show ] do
    resources :chatrooms, only: [ :create]
  end

  resources :chatrooms, only: [ :show ] do
    resources :messages, only: :create
  end

  resources :chatrooms, only: [ :index]

end
