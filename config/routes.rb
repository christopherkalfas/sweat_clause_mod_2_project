Rails.application.routes.draw do
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users
  resources :charities
  resources :pledges 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
