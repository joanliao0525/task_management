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

  # TODO: 因為資料庫關聯已經建立，所以在建立 task 時一定要有 user 才能寫入資料庫，所以暫時先用 seed 產生的第一筆 User
  def create
    @task = Task.new(task_params)
    @task.user = User.first 
    if @task.save
      redirect_to root_path, info: "Task created successfully!"
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to root_path, info: "Task updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path, info: "Task deleted successfully!"
  end

private

  def task_params
    params.require(:task).permit(:title, :description, :start_at, :end_at, :status, :location, :all_day, :url, :priority)
  end

  def set_task
    @task = Task.find_by(id: params[:id])
    redirect_to root_path, danger: "Task doesn't exist!" if @task.nil?
  end
end
