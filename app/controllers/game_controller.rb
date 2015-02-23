class GameController < ApplicationController
   before_action :authenticate_user!
   helper_method :sort_column, :sort_direction, :search_params
   before_filter :find_user, :only => [ :show]
   respond_to :html, :js

  def find_user
    @user = User.find(params[:id])
  end 

  def profile
    task;
    comment;
    playerSearch;
 end

  def task

    @tasks = Task.all
    @task = Task.new
  end
  
  def comment
    @comment = Comment.new 
    @comments = Comment.order('created_at DESC')
  end
  
  def playerSearch
    @q = User.search(params[:q])
    search_relation = @q.result
    @users = search_relation.order(sort_column + " " + sort_direction).references(:user).page params[:page]
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