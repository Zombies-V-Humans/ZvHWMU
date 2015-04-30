ZVH::Application.routes.draw do
  resources :zombie_groups
  resources :tasks
  resources :comments, only: [:new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end

  namespace "admin" do
    resources :users
  end
  get 'game/profile', :as => "profile"
  get "pages/index" , :as => "index"
  get "pages/rules", :as => "rules"
  get "pages/video", :as => "video"
  get "comments/_chat", :as => "chat"
  get "zombie_groups/index", :as => "map"
  get "tasks/reset", :as => "reset"

  get "/admin" => "admin/base#index", :as => "admin"
  root :to => "pages#index" , :as => "root"
end
