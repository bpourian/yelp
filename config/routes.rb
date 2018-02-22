Rails.application.routes.draw do
  devise_for :users
  get 'restaurant/index'
  resources :restaurants do
    resources :reviews
  end
  root 'restaurants#index'
end
