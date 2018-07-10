Rails.application.routes.draw do
  resources :comments
  resources :pitches
  resources :projects
  resources :students

  #I don't think we need to specicy becauyse the we can perform all crud actions on all resources. I think.
end
