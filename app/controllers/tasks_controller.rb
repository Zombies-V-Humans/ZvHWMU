class TasksController < GameController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only: [:edit, :update, :destroy]
  respond_to :html, :js

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
  end

  def update
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
  end

  def find_user
    @user = User.find(params[:id])
  end 

  def reset
    clear_all_zombies
    clear_all_messages
    clear_all_tasks
  end

  def clear_all_zombies 
     ZombieGroup.delete_all 

  end

  def clear_all_messages
     Comment.delete_all 
  end

  def clear_all_tasks
    Task.delete_all 

  end
  def show 
    reset
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
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end

  def search_params
    { :search => params[:search] }
  end

  def index
    new
    playerSearch

  end

  private

    def all_tasks
      @tasks = Task.all


    end

    def set_tasks
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:description, :tagger)
    end


end
