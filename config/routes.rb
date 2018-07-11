Rails.application.routes.draw do
  get '/', to: 'students#welcome', as: 'welcome'
  resources :students
  resources :projects
  resources :pitches do
    post '/comments', to: 'comments#create', as: 'comments'
  end
  get '/login', to: "sessions#new", as: 'login'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: "sessions#create", as: 'sessions'
end
