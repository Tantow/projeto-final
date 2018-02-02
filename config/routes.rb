Rails.application.routes.draw do
  resources :projects
  #root to: "users#index"
  
  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'logout', to: "session#destroy", as: :logout 
  
  resources :users
  resources :teams
  
  get 'reset_password/search', to: "reset_password#search", as: :reset_password
	post 'reset_password/search', to: "reset_password#recovery"
end
