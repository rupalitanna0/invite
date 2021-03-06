Rails.application.routes.draw do
  root 'application#homepage'
  resources :rsvps
  resources :photogalleries
  resources :events
  resources :guests
  resources :users
  match 'signup' => 'users#new', :via => :get
  match 'login'  => 'sessions#new', :via => :get
  match 'logout' => 'sessions#destroy', :via => [:get, :delete]
  match 'signup' => 'users#new', :via => :get

  resource :session, :only => [:new, :create, :destroy]
  resource :account, :controller => 'users', :except => [:index, :destroy, :show, :edit]

  resource :account, :controller => 'users', :only => [:new, :create]

  get '/foobar' => 'photogalleries#foobar'
  get '/users/guests'=> 'users#guests'
 # get '/homepage'=>'applicationcontroller#homepage'
end
