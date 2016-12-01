Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'pointclouds/index'

  get 'pointclouds/new'

  get 'pointclouds/create'

  get 'pointclouds/destroy'

  resources :pointclouds, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
