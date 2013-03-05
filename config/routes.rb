Kifa::Application.routes.draw do

  resources :users
  resources :lectures
  resources :resources

  root :to => "users#index"

  match "/login" => "sessions#new"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


end
