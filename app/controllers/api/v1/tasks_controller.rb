# frozen_string_literal: true

module Api
  module V1
    # Controller to handle the requests made on the tasks table and that produces json
    class TasksController < ApplicationController
      before_action :set_tasks, only: %i[index update destroy]
      before_action :set_task, only: %i[update destroy]

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
          render json: @task
        else
          render_error
        end
      end

      def destroy
        @task.destroy
        head :no_content
      end

      private

      def set_tasks
        @tasks = Task.all.order('created_at')
      end

      def set_task
        @task = Task.find(params[:id])
      end

      def task_params
        params.require(:task).permit(:name, :done, :pomodoros, :completed)
      end

      def render_error
        render  json: { errors: @task.errors.full_messages },
                status: :unprocessable_entity
      end
    end
  end
end
