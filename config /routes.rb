Rails.application.routes.draw do
  resources :houses do
    resources :members, only: [:index, :new, :create]
  end
resources :members, only: [:show]

  root 'houses#index'
end
