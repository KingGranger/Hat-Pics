Rails.application.routes.draw do
  root 'hat_pics#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/about' => 'static#about'
  resources :hats
  resources :comments, only: [:create, :destroy]
  resources :ratings, only: [:create, :destroy]
  resources :hat_pics, only: [:show, :new, :create, :destroy, :index]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
