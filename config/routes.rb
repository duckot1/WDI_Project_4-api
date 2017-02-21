Rails.application.routes.draw do
  resources :users
  resources :jobs
  resources :requests
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
