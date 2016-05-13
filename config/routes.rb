Rails.application.routes.draw do
  
  root 'welcome#home'
  resources :users, :sessions
  get '/signin' => 'sessions#new'

end