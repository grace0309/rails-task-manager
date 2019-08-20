class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @task = Task.new(title: params[:title], details: params[:details])
    @task.save
    @tasks = Task.all
    render 'index'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(title: params[:title], details: params[:details])
    @tasks = Task.all
    render 'index'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
    render 'index'
  end
end
