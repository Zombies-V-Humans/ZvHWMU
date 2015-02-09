ZVH::Application.routes.draw do

  resources :comments, only: [:new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end

  namespace "admin" do
    resources :users
  end

  
  get 'game/profile', :as => "profile"
  get 'global/globalchat'
  get "pages/index" 
  get "pages/rules"
  get "/admin" => "admin/base#index", :as => "admin"
  root :to => "pages#index"
end
