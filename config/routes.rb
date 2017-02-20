Rails.application.routes.draw do
  resources :jobs
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
