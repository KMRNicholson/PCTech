Rails.application.routes.draw do
  get 'pointclouds/index'

  get 'pointclouds/new'

  get 'pointclouds/create'

  get 'pointclouds/destroy'

  resources :pointclouds, only: [:index, :new, :create, :destroy]
  root "pointclouds#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
