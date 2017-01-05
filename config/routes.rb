Rails.application.routes.draw do
  
  resources :blogposts
  root to: 'pages#construction'
  devise_for :users
  resources :users do
    resource :profile
  end
  get 'about', to: 'pages#about'
  get 'web_apps', to: 'pages#web_apps'
  get 'schools', to: 'pages#schools'
end
