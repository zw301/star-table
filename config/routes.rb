Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy, :show, :new]
    resources :users do
      resources :restaurants, only: [:create]
    end
    resources :restaurants, only: [:index, :show]
    resources :reservations, only: [:create, :show, :index, :destroy]
    resources :reviews, only: [:create, :show, :index, :destroy]
  end

  root "static_pages#root"
end
