Rails.application.routes.draw do
  
  root 'welcome#home'
  resources :users, :sessions
  get '/signin', to: 'sessions#new'

end