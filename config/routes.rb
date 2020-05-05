Rails.application.routes.draw do
  get 'card/new'
  get 'card/edit'
  devise_for :users
  root 'top#index'
  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create edit update destroy)
  end
 end
