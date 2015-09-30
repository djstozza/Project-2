Rails.application.routes.draw do
  root :to => 'session#new'
  get '/categories/api' => 'categories#api'
  get '/bookmarks/api' => 'bookmarks#api' 
  get '/items/api' => 'items#api'

  post '/buy/:id', to: 'transactions#create', as: :buy
  get '/pickup/:guid', to: 'transactions#pickup', as: :pickup

  resources :wishes

  resources :bookmarks

  resources :items do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  get '/categories/home' => 'categories#home'
  resources :categories do 
    collection do
      get 'search'
    end
  end

  resources :subcategories



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  get '/items/findme' => 'items#findme'
  
end
