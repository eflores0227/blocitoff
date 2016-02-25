Rails.application.routes.draw do
  root 'users#show'
  get 'welcome/index'
  devise_for :users
  resources :users do
    resources  :items, only: [:create, :destroy]
  end


end
