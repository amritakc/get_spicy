Rails.application.routes.draw do

  root 'reviews#index'

  get '/login' => 'users#login'


end
