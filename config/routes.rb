Rails.application.routes.draw do
  resources :directions
  resources :projects
  #root to: "users#index"

  get 'reset_password/search', to: "reset_password#search", as: :reset_password
	post 'reset_password/search', to: "reset_password#recovery"
  #root to: "teams#index"

  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'logout', to: "session#destroy", as: :logout

 


  patch '/linkteamproject/:id', to: 'projects#rota', as: :add_team_to_project
  patch '/linkuserteam/:id', to: 'teams#rota', as: :add_user_to_team
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
