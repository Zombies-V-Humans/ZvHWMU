class TasksController < GameController
  before_action :all_tasks, only: [:index, :create, :update, :destroy, :delete_all]
  before_action :set_tasks, only: [:edit, :update, :destroy, :delete_all]
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
 
  private

    def all_tasks
      @tasks = Task.all
    end

    def set_tasks
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:description)
    end
end
