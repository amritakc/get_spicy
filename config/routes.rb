Rails.application.routes.draw do

  root 'reviews#index'

  get '/login' => 'users#login'
  get '/profile' => 'users#show'

  post '/users' => 'users#create'

  post '/sessions' => 'sessions#create'


end
