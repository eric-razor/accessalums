Rails.application.routes.draw do
  get '/', to: 'students#welcome'
  resources :students
  resources :projects
  resources :pitches
  resources :comments
  get '/login', to: "sessions#new", as: 'login'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: "sessions#create", as: 'sessions'
end
