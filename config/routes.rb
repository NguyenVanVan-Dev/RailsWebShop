Rails.application.routes.draw do
  # Admin
  get 'admin',to:'admin#new'
  post 'login/admin',to:'admin#create' 
  get 'show/dashboard',to:'admin#show'
  delete  "logout"  ,to: "admin#destroy"
  


  # Dng ki User 

  resources :register_user

  post 'createuser',to:'register_user#create'

  # Home
  get 'home' ,to:"home#index"
  root "home#index"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
