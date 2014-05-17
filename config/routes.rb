Rails.application.routes.draw do

  root :to => 'pages#index'
  get '/:locale' => 'pages#index'

  scope '/(:locale)', :locale => /en|de/ do

    get 'index' => 'pages#index',
        :as => :index

    resources :organizers
    resources :categories
    resources :markers
    resources :places

  end

end
