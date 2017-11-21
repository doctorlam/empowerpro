Rails.application.routes.draw do
  resources :courses
  resources :user_profiles
  resources :sponsor_profiles
  resources :users
  devise_for :users, :path_prefix => 'my'

  # Name it however you want
  post 'create_user' => 'users#create', as: :create_user      

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#dashboard"
    get "dashboard" => "pages#dashboard"
    get "userlist" => "pages#userlist"
    get "adminpanel" => "pages#adminpanel"
	get "userregistration" => "pages#userregistration"
end
