Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get '', to: 'home#index', as: 'home'
  get '/about', to: 'home#about', as: 'about'
  root 'home#index'
end
