Rails.application.routes.draw do
  resources :slides
  get '/delete/slide/:id' ,to: 'slides#destroy' ,as: 'delete_slide'
  #Product
  resources :products
  
  #  Category 
  resources :categorys
  
  resources :home

  

  # Admin
  get 'admin',to:'admin#new'
  post 'login/admin',to:'admin#login' 
  get 'show/dashboard',to:'admin#show'
 
  # Dng ki User 

  resources :register_user
  post 'createuser',to:'register_user#create'
  delete  "logout/user"  ,to: "register_user#destroy"
  # Home
 root 'home#index'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
