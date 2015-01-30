class Admin::BaseController < ApplicationController

  before_filter :require_admin
  layout "admin"
#when we navigate to /admin we will hit the index method, this will redirect us to the admin users_path, This is temporary at some point we will delete it and use index as a dashboard page 
  def index
  redirect_to admin_users_path
  end

  protected

  def require_admin
    unless current_user.try(:admin?)
      render404 and return false
    end
  end

end
