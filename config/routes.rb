Rails.application.routes.draw do

  root 'reviews#index'

  get '/login' => 'users#login'

  post '/users' => 'users#create'

  post '/sessions' => 'sessions#create'


end
