Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :events, only: [:create, :show]
  resources :participants, only: [:new, :create , :destroy]
end
