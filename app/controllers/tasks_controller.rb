class TasksController < ApplicationController

  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = User.first
    if @task.save
      redirect_to tasks_path(@task)
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to '/', notice: "Task updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path, notice: "Task deleted successfully!"
  end

private

  def task_params
    params.require(:task).permit(:user_id, :title, :description, :start_at, :end_at, :status, :position, :all_day, :url, :priority)
  end

  def set_task
    @task = Task.find_by(id: params[:id])
    redirect_to root_path if @task.nil?
  end
end
