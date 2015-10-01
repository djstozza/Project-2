Rails.application.routes.draw do

  root :to => 'session#new'


  post '/items/nearme' => 'items#nearme'
  get '/items/showme' => 'items#showme'

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
  get "mailbox/api" => "mailbox#api"
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  resources :conversations do
      member do
          post :reply
          post :trash
          post :untrash
      end
  end
  get '/session' => 'session#show'
  get '/login' => 'session#new'
  get '/session' => 'session#show'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]


  
end
