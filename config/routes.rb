Rails.application.routes.draw do
  #  Category 
  resources :category
  get 'newcategory',to:'category#newcategory'
  post 'newcategory',to:'category#addcategory'
  get 'showcategory',to:'category#showcategory'
  

  # Admin
  get 'admin',to:'admin#new'
  post 'login/admin',to:'admin#create' 
  get 'show/dashboard',to:'admin#show'
  delete  "logout"  ,to: "admin#destroy"
  # Dng ki User 

  resources :register_user
  post 'createuser',to:'register_user#create'

  # Home
  get 'home' ,to:"category#index"
  root "category#index"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
