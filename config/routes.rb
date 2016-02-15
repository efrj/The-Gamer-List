Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'page#index'
  
  get 'about' => 'page#about'

  get 'genres' => 'genres#index'
  get 'genre/menu' => 'genres#menu'
  get 'genre/:id' => 'genres#show'

  get 'games' => 'games#index'
  get 'game/:id' => 'games#show'

  get 'platforms' => 'platforms#index'
  get 'platform/menu' => 'platforms#menu'
  get 'platform/:id' => 'platforms#show'

  get 'softhouses' => 'softhouses#index'
  get 'softhouse/:id' => 'softhouses#show'

end
