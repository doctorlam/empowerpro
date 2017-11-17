Rails.application.routes.draw do
  resources :user_profiles
  resources :sponsor_profiles
devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#dashboard"
    get "dashboard" => "pages#dashboard"

end
