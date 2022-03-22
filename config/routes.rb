Rails.application.routes.draw do
  resources :experiences
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users
  resources :skills


  root "skills#index"

  # Defines the root path route ("/")
end
