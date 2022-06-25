Rails.application.routes.draw do
  root 'properties#index'
  devise_for :users
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # According to devise config, is required to define the root_path here (friendly reminder)
  # root "articles#index"
  
end
