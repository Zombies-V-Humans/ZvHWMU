class PlayerSearchController < GameController
   helper_method :sort_column, :sort_direction, :search_params
   before_action :set_task, only: [:show, :edit, :update, :destroy, :destroyAll]

  respond_to :html, :js
  before_filter :find_user, :only => [:edit, :show]

  def find_user
    @user = User.find(params[:id])
  end 


def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def search_params
    { :search => params[:search] }
  end

end