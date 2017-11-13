Rails.application.routes.draw do
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :hats
  resources :comments, only: [:create, :new, :delete]
  resources :ratings, only: [:create, :new, :delete]
  resources :hat_pics, only: [:show, :new, :create, :delete, :index]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
