Rails.application.routes.draw do

  root :to => 'pages#index'

  scope '/(:locale)', :locale => /en|de/ do

    get 'index' => 'pages#index',
        :as => :index

    get '/categories/places' => 'categories#places',
        :as => :category_places
    resources :categories, :only => [:index, :create, :update, :destroy]

    resources :organizers
    resources :places

  end

end
