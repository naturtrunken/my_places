Rails.application.routes.draw do

  root 'pages#index'
  get '/index' => 'pages#index',
      :as => 'index'

  resources :organizers
  resources :categories
  resources :markers
  resources :places

end
