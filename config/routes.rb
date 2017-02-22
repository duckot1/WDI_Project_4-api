Rails.application.routes.draw do
  get 'jobs/applied', to: 'jobs#applied'
  get 'jobs/myjobs', to: 'jobs#myJobs'
  get 'jobs/booked', to: 'jobs#booked'
  resources :users
  resources :jobs
  resources :requests
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
  get 'jobs/:id/applications', to: 'requests#jobApplications'
end
