Rails.application.routes.draw do  
  get 'sondage/index'
  post 'sondage/create'
  # delete 'sondage/destroy'
  delete '/sondage/:id/destroy', to: 'sondage#destroy', as: 'destroy'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  # post '/addsurvey' to: 'sondage#create'
  # get 'showsurvey' to: 'sondage#index'
  resources :users, only: [:create, :show, :index]
end