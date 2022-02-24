Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :studios do
    resources :bookings, only: [:create, :destroy]
    resources :reviews, only: [:new, :create, :index]
  end

  get '/my_profile', to: 'dashboards#my_profile'
  get 'profile/:id', to: 'dashboards#profile', as: :profile
  patch 'bookings/:id/accept', to: 'bookings#accept', as: :accept
  patch 'bookings/:id/decline', to: 'bookings#decline', as: :decline
end
