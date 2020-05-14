class TasksController < ApplicationController
  def index
    @tasks = Task.all.includes(:category, :priority)
   
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def slow
    @tasks = Task.all.order("start_time DESC").includes(:category, :priority)
  end

  def high
    @tasks = Task.all.order("priority_id DESC").includes(:category, :priority)
  end

  def low
    @tasks = Task.all.order("priority_id ASC").includes(:category, :priority)
  end

  def fast
    @tasks = Task.all.order("start_time ASC").includes(:category, :priority)
  end


  private
  def task_params
    params.require(:task).permit(:title, :content, :start_time, :category_id, :priority_id)
  end
end
