Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :contacts, only: [:create, :destroy, :index, :show, :update]
  resources :contact_shares, only: [:create, :destroy, :index, :show, :update]
end

