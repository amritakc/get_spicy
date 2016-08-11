Rails.application.routes.draw do

  root 'reviews#index'

  get '/login' => 'users#login'
  get '/profile' => 'users#show'
  get '/review' => 'reviews#create_review'

  post '/users' => 'users#create'

  post '/sessions' => 'sessions#create'


end
