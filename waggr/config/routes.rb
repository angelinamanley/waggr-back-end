Rails.application.routes.draw do
  resources :posts
  resources :attendances
  resources :meetups
  resources :memberships
  resources :groups
  resources :dogs
  resources :users
  post '/login', to: 'authentication#create'
  post '/validate', to: 'authentication#validate'
  post '/signup', to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
