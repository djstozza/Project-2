Rails.application.routes.draw do
  root :to => 'session#new'

  resources :wishes
  resources :bookmarks
  resources :items do
    collection do
      get 'search'
    end
  end
  resources :subcategories
  
  get '/categories/home' => 'categories#home'
  resources :categories do 
    collection do
      get 'search'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]
  
end
