Rails.application.routes.draw do
  get 'welcome/index'
  get 'movie/index'
  root "welcome#index"

  devise_for :users
  resources :movies

  resources :tvshows do 
  	resources :episodes
  end
  resources :frontpage
end
