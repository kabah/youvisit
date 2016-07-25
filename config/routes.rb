Rails.application.routes.draw do
  root to: 'home#index'
  
  devise_for :users

  resources :places do
    resources :trips
  end
  
end
