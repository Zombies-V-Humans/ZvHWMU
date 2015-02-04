ZVH::Application.routes.draw do


  get 'game/comments/new'
  get 'game/new'
  get 'game/profile/new'

  resources :comments, only: [:new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
      get '/sign-in' => "devise/sessions#new", :as => :login
  end


  get "pages/index" 
  get "pages/rules"
  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end
