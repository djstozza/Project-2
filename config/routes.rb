Rails.application.routes.draw do
  root :to => 'session#new'

  resources :wishes
  resources :bookmarks
  resources :items
  resources :subcategories
  
  get '/categories/home' => 'categories#home'
  resources :categories

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]
  
end
