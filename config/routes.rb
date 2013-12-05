BigData::Application.routes.draw do
  root 'uploads#index'

  resources :uploads, only: [:new, :create, :index]
end
