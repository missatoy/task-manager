class TasksController < ApplicationController
  before_action :find_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to bookmarks_path(anchor: "bookmark_#{@bookmark.id}"), notice: "Updated successfully"
    else
      render :index
    end
  end

  private

  def task_params
    params.require(@task).permit(:name, :description)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
