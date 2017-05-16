class TasksController < ApplicationController
  def show
    @task = Tasks.find(params[:id])
  end
  def index
    @task = Tasks.all
  end
  def new
    @task = Tasks.new
  end
  def create
    @task = Tasks.new(params[:task])
    @task.save
  end
  def edit
    @task = Tasks.find(params[:id])
  end
  def update
    @task = Tasks.find(params[:id])
    @task.udpate(params[:task])
  end
  def delete
    @task = Tasks.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:name, :address)
  end
end

