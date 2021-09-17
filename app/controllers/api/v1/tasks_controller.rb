class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: :destroy

  def index
    render json: Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task, status: :created
    else
      render_error
    end
  end

  def destroy
    @task.destroy
    render json: Task.all
  end

	private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end

  def render_error
    render json: { errors: @task.errors.full_messages },
      status: :unprocessable_entity
  end
end
