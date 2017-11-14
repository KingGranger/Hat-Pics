Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :hats
  resources :comments, only: [:create, :delete]
  resources :ratings, only: [:create, :delete]
  resources :hat_pics, only: [:show, :new, :create, :delete, :index]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
