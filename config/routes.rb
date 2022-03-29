Rails.application.routes.draw do
  get 'profils/index'
  get 'profils/search'
  get 'profils/show'
  get 'profils/edit'
  patch 'profils/update'

  resources :experiences
  devise_for :users
  resources :skills
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users


  root "profils#index"

  # Defines the root path route ("/")
end
