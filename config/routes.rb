Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :time_slots, only: [:index, :show, :new, :create, :destroy]
  resources :lessons
  resources :courses, only: [:index]
  resources :bookings, only: [:new, :create]
  resources :pricing, only: [:index]
  resources :team, only: [:index]
  resources :hours, only: [:index, :show]
  resources :orders, only: [:show, :create]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end