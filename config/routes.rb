Rails.application.routes.draw do

  # 認証

  resources :user_sessions
  resources :users
  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
  get 'oauths/oauth'
  get 'oauths/callback'
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", as: :auth_at_provider


  resources :items, only: %i(index show)

  namespace :users do
    get 'signup' => "new"
    post 'signup' => "create"
    get 'leave' => "leave"
    delete 'destroy' => "destroy"
  end


  namespace :admins do
    get 'dashboard' => 'dashboard#show'
    resources :reactions
    resources :revirews
    resources :comments
    resources :items
    resources :item_purchase_logs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
end
