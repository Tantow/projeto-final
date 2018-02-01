Rails.application.routes.draw do
  #root to: "users#index"
  
  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'logout', to: "session#destroy", as: :logout 
  
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
