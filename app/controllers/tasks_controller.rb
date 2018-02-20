class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new

  end

  def create
    @task = Task.create(title: params[:title], details: params[:details], completed: false)
    redirect_to '/tasks'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(title: params[:title], details: params[:details])
    redirect_to '/tasks'
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to '/tasks'
  end
end
