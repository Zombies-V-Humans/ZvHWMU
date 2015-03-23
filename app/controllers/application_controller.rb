class ApplicationController < ActionController::Base

  protect_from_forgery
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  #here, I add the avatar and name form to the list of paramaters to save when submitted
  #without adding them manually, the avatar and name form will never be saved into the DB
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :avatar << :name
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  protected
  def render404
    render :file => File.join(Rails.root, 'public', '404.html'), :status => 404, :layout => false
    return true
  end

end
