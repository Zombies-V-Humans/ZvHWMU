class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.find_for_facebook_oauth(env["omniauth.auth"], current_user)
    #Uncomment the line below and choose sign in the facebook option 
    #to see the file that FACEBOOK returns,
    #it contains all the users info from name to email to gener to profile pic
    
    #render :text => "<pre>" + env["omniauth.auth"].to_yaml and return

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
  def after_sign_in_path_for(resource)
    '/game/player/new'
  end
  def after_sign_up_path_for(resource)
    '/game/player/new'
  end
end
