ZVH::Application.routes.draw do
  resources :comments, only: [:new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  get "comments/new"
  get "pages/index"
  get "pages/rules"
  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end
