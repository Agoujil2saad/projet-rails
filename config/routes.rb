Rails.application.routes.draw do

root 'pages#home'
get 'inscription' => 'users#new' 
get 'aide' => 'pages#aide'
get 'contact' => 'pages#contact'
resources:users
end
