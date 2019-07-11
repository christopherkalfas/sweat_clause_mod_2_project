Rails.application.routes.draw do
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/users/:id/trackers', to: 'users#activity_trackers'
  resources :users
  resources :charities
  resources :pledges 
  resources :groups
  resources :challenges
  resources :activity_trackers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
