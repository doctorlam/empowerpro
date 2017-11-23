Rails.application.routes.draw do
  resources :courses
  resources :user_profiles
  resources :sponsor_profiles
  devise_for :users, controllers: { registrations: "registrations" }, :path_prefix => 'account'
  resources :users


  # Name it however you want
  post 'create_user' => 'users#create', as: :create_user      

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
    get "dashboard" => "pages#dashboard"
    get "userlist" => "pages#userlist"
    get "adminpanel" => "pages#adminpanel"
	 get "userregistration" => "pages#userregistration"
    get "sponsorregistration" => "pages#sponsorregistration"
    get "adminregistration" => "pages#adminregistration"
    get "registrationlanding" => "pages#registrationlanding"
   get "home" => "pages#home"




end
