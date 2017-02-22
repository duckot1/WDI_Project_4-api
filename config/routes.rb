Rails.application.routes.draw do
  get 'jobs/applied', to: 'jobs#applied'
  resources :users
  resources :jobs
  resources :requests
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
  get 'jobs/:id/applications', to: 'requests#jobApplications'
end
