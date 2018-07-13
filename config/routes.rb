Rails.application.routes.draw do
  resources :episodes do
    resources :comments
  end
  resources :seasons
  resources :companies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :shows
end
