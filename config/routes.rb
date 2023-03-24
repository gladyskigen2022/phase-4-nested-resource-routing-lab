Rails.application.routes.draw do
  
  resources :users, only: [:show] do
    #nested resources for reviews
    resources :items, only: [:show, :index, :create]
  end
  resources :items, only: [:index]
end

