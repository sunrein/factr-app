Rails.application.routes.draw do
  resources :facts
    root "facts#index"
end
