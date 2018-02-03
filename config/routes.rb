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


  patch '/linkuserteam/:id', to: 'teams#rota', as: :add_user_to_team
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
