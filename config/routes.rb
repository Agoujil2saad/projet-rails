Rails.application.routes.draw do


 

root 'pages#home'
get 'inscription' => 'users#new' 
get 'aide' => 'pages#aide'
get 'contact' => 'pages#contact'

 get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'
resources :account_activations, only: [:edit]
resources:users
resources :cours, only: [:create,:destroy]

end
