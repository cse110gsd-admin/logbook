Logbook::Application.routes.draw do
  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/help"

  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'

  root :to => 'pages#home' 

  resources :calendars
  resources :events
  resources :workouts
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
 

end
