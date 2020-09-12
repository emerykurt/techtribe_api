Rails.application.routes.draw do

  resources :ratings, only: [:create, :index, :update, :show, :destroy]
  resources :companies, only: [:create, :index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
