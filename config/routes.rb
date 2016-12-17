Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'pointclouds/index'
  get 'pointclouds/new'
  get 'pointclouds/create'
  get 'pointclouds/display'
  delete 'pointclouds/destroy'

  post '/pointclouds/new', to: 'pointclouds#new'
  get '/pointcloud_disp', to: 'pointclouds#display'
  #get '/attachment/', to: 'pointclouds#display'

  resources :users

  resources :pointclouds, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
