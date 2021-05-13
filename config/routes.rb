Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:create]
  resources :blogs
  resources :comments, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
end
