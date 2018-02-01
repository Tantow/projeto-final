Rails.application.routes.draw do
  #root to: "users#index"
  


  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'logout', to: "session#destroy", as: :logout 

 


 resources :users
 
end
