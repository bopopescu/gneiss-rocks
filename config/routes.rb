Rails.application.routes.draw do
  root 'rocks#index'

  resources :rocks, only: [:index, :create]
end
