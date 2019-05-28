Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'page#index'
  
  get 'about' => 'page#about'

  get 'genres' => 'genres#index'
  get 'genre/menu' => 'genres#menu'
  get 'genre/:id' => 'genres#show'

  get 'generations' => 'generations#index'
  get 'generations/menu' => 'generations#menu'
  get 'generation/:id' => 'generations#show'

  get 'games' => 'games#index'
  get 'game/:id' => 'games#show'

  get 'platforms' => 'platforms#index'
  get 'platform/menu' => 'platforms#menu'
  get 'platform/:id' => 'platforms#show'

  get 'softhouses' => 'softhouses#index'
  get 'softhouse/:id' => 'softhouses#show'
end
