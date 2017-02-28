Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  post '/gamerooms/:id', to: 'gamerooms#join', as: :join_gameroom
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :gamerooms do
      resources :gamewords, shallow: true do
        put "update_status" => "gamewords#update_status"
        put "toggle_favourite" => "gamewords#toggle_favourite"
        put "set_valid" => "gamewords#set_valid"
        put "set_invalid" => "gamewords#set_invalid"
      end
  end
end