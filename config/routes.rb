Rails.application.routes.draw do
  get 'hehe/newuser'
  # Dng ki User 

  resources :register_user

  post 'createuser',to:'register_user#create'

  # Home
  get 'home' ,to:"home#index"

  root "home#index"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
