Kifa::Application.routes.draw do

  resources :users
  resources :lectures
  resources :resources

  root :to => "kifa#index"

  match "/login" => "sessions#index"

  devise_scope :user do
    get 'logout', :to => 'devise/sessions#destroy'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


end
