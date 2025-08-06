
Rails.application.routes.draw do
  root 'posts#index'

  # User authentication
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  # User profiles
  resources :users, only: [:index, :show] do
    member do
      get :followers
      get :following
    end
  end

  # Posts and interactions
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
    member do
      get :share
    end
  end

  # Explore page
  get 'explore', to: 'posts#explore'

  # Notifications
  resources :notifications, only: [:index, :update]

  # Search
  get 'search', to: 'search#index'

  # Direct Messages (optional enhancement)
  resources :conversations, only: [:index, :create, :show] do
    resources :messages, only: [:create]
  end

  # Static pages
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
end
