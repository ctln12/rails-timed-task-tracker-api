# frozen_string_literal: true

module Api
  module V1
    # Controller to handle the requests made on the sessions table and that produces json
    class SessionsController < ApplicationController
      def index
        @sessions = Session.all
        render json: @sessions
      end

      def update
        @session = Session.find(params[:id])
        if @session.update(session_params)
          render json: @session
        else
          render_error
        end
      end

      private

      def session_params
        params.require(:session).permit(
          :completed,
          :focus_length, :short_break_length, :long_break_length, :long_break_after,
          :task_id
        )
      end

      def render_error
        render  json: { errors: @session.errors.full_messages },
                status: :unprocessable_entity
      end
    end
  end
end
