Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :studios do
    resources :bookings, only: [:create, :destroy]
    resources :reviews, only: [:new, :create, :index]
  end

  get '/profile', to: 'dashboard#profile'
  patch 'bookings/:id', to: 'dashboard#accept'
  patch 'bookings/:id', to: 'dashboard#decline'
end
