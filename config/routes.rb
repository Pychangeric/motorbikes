Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
 # This is the route for the home page
  devise_for :admins
  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users, only: [:index, :show] do
    member do
      get 'activities'
      get 'bikes'
    end
  end

  resources :admins, only: [:new, :create]
  post '/admins/promote_user', to: 'admins#promote_user'

  resources :bikes, only: [:index, :show, :new, :create, :destroy]
end
