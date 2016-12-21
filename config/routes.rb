Rails.application.routes.draw do

  #Static pages routes
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  #User routes
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  #Session routes
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #Point Cloud routes
  get '/library', to: 'pointclouds#index'
  get '/upload', to: 'pointclouds#new'
  post '/create', to: 'pointclouds#create'
  get '/model/:id', to: 'pointclouds#show', as: 'model'
  delete 'pointclouds/destroy'

  #Resources
  resources :users
  resources :pointclouds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
