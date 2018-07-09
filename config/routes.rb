Rails.application.routes.draw do
  resources :comments
  resources :pitches
  resources :projects
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
