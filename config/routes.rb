Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles, only: [:index, :new ,:create, :show, :edit, :update, :destroy]
  resources :users, only: :show
  resources :wills, only: :index
end
