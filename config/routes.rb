Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :movies
  resources :tvshows
  resources :frontpage

  #This is to get the from page of the Movie page.
  get 'movie/index'
  root "welcome#index"
end
