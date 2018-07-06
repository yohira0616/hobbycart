Rails.application.routes.draw do
  resources :revirews
  resources :comments
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
end
