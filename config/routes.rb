Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :users, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
