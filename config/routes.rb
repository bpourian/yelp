Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'restaurant/index'
  resources :restaurants do
    resources :reviews
  end
  root 'restaurants#index'
end
