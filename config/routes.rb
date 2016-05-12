Rails.application.routes.draw do
  
  get 'users/new'

  root 'welcome#home'

end