Rails.application.routes.draw do
  resources :series, only: [:index, :show]
    get 'home/index'
    root 'home#index'
end
