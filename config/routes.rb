Rails.application.routes.draw do
  
  root 'welcome#home'
  resources :users, :sessions, :attractions
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  post '/rides/new', to: 'rides#new'

end