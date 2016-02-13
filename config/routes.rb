Rails.application.routes.draw do
  resources :facts
    root "facts#index"

  resources :users, except: :index

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
