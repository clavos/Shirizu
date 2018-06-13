Rails.application.routes.draw do
  resources :series
    get 'home/index'
    root 'home#index'
end
