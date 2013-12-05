BigData::Application.routes.draw do
  resources :uploads, only: [:new, :create, :index]
end
