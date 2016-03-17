Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :tvshows
  get 'tvshow/show'

  
  root "movies#index"
end
