Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :studios do
    resources :bookings, only: [:create, :destroy]
    resources :reviews, only: [:new, :create, :index]
  end

  get '/profile', to: 'dashboards#profile'
  patch 'bookings/:id', to: 'dashboards#accept'
  patch 'bookings/:id', to: 'dashboards#decline'
end
