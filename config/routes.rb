Rails.application.routes.draw do
  get 'quotations/index'
  devise_for :users
  root to: "quotations#index"
  resources :users, only: [:edit, :update] 
end
