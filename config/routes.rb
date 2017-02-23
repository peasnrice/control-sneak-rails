Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :gamerooms
  post "/gamerooms/:id", to: "gamerooms#join", as: :join_gameroom
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
end