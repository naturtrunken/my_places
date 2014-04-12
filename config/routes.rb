Rails.application.routes.draw do
  resources :organizers

  resources :categories

  root 'pages#index'
  resources :places
end
