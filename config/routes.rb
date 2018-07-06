Rails.application.routes.draw do

  scope :admin do
    resources :reactions
    resources :revirews
    resources :comments
    resources :items
    resources :item_purchase_logs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
end
