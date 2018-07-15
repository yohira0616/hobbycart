Rails.application.routes.draw do

  # 認証
  resources :user_sessions
  resources :users
  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
  get "/auth/:provider/callback" => "oauths#callback"
  get "/auth/:provider" => "oauths#oauth", as: :auth_at_provider

  resources :items, only: %i(index show)
  resources :users, only: :destroy do
    resources :item_purchase_logs, only: %i(index create)
    resources :reactions, only: :index
  end

  get 'settings' => 'settings#show'

  namespace :admins do
    get 'dashboard' => 'dashboard#show'
    resources :users, only: %i(index)
    resources :reactions
    resources :reviews
    resources :comments
    resources :items
    resources :item_purchase_logs
  end

  namespace :api do
    resources :comments, only: %i(create destroy)
    resources :reactions, only: %i(create destroy)
    resources :reviews, only: %i(create destroy)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
end
