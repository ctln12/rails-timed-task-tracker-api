class Api::V1::SessionsController < ApplicationController
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
    params.require(:session).permit(:completed, :focus_length, :short_break_length, :long_break_length, :long_break_after, :task_id)
  end
end
