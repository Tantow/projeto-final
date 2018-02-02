Rails.application.routes.draw do
  resources :projects
  #root to: "users#index"
  
  resources :users
  resources :teams
  
  get 'reset_password/search', to: "reset_password#search", as: :reset_password
	post 'reset_password/search', to: "reset_password#recovery"
  #root to: "teams#index"

  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'logout', to: "session#destroy", as: :logout

  #resources :users
  get '/users', to: 'users#index', as: :users
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: :new_user
  get '/users/:id/edit', to: 'users#edit', as: :edit_user
  get '/users/:id', to: 'users#show', as: :user
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  #resources :teams
  get '/teams', to: 'teams#index', as: :teams
  post '/teams', to: 'teams#create'
  get '/teams/new', to: 'teams#new', as: :new_team
  get '/teams/:id/edit', to: 'teams#edit', as: :edit_team
  get '/teams/:id', to: 'teams#show', as: :team
  patch '/teams/:id', to: 'teams#update'
  put '/teams/:id', to: 'teams#update'
  delete '/teams/:id', to: 'teams#destroy'

  patch '/linkuserteam/:id', to: 'teams#rota', as: :add_user_to_team
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
