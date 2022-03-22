Rails.application.routes.draw do
  get 'profils/index'
  get 'profils/search'
  get 'profils/show'

  resources :experiences
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users
  resources :skills


  root "profils#index"

  # Defines the root path route ("/")
end
