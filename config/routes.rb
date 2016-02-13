Rails.application.routes.draw do
  resources :facts
    root "facts#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

end
