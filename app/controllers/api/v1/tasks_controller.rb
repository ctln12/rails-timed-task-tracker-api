class Api::V1::TasksController < ApplicationController
  before_action :set_tasks, only: [:index, :update, :destroy]
  before_action :set_task, only: [:update, :destroy]

  def index
    render json: @tasks
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task, status: :created
    else
      render_error
    end
  end

  def update
    if @task.update(task_params)
      render json: @tasks
    else
      render_error
    end
  end

  def destroy
    @task.destroy
    render json: @tasks
  end

	private

  def set_tasks
    @tasks = Task.all.order('created_at')
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :completed)
  end

  def render_error
    render json: { errors: @task.errors.full_messages },
      status: :unprocessable_entity
  end
end
