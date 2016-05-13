Rails.application.routes.draw do
  
  resources :users
  get '/signin', to: 'users#signin'

  root 'welcome#home'

end