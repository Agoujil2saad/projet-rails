Rails.application.routes.draw do
root 'pages#home'
get 'inscription' => 'utilisateurs#nouveau' 
get 'aide' => 'pages#aide'
get 'contact' => 'pages#contact'

end
