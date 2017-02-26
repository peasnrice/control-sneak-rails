Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  post '/gamerooms/:id', to: 'gamerooms#join', as: :join_gameroom
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :gamerooms do
      resources :gamewords, shallow: true do
        put "update_status" => "gamewords#update_status"
      end
  end
end