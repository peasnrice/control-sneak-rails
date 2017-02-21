Rails.application.routes.draw do
  devise_for :users
  resources :gamerooms
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
end