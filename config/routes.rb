# config/routes.rb
Rails.application.routes.draw do
  devise_for :users

  root to: "bikes#index"

  resources :users, only: [:index, :show] do
    member do
      get 'activities'
      get 'bikes'
    end
  end

  resources :bikes, only: [:index, :show, :new, :create, :destroy]
end






