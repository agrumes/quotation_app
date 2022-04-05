Rails.application.routes.draw do
  devise_for :users
  root to: "quotations#index"
  resources :users, only: [:edit, :update] 
end
