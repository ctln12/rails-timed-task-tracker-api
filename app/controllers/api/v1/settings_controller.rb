class Api::V1::SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :update]

  def show
    render json: @setting
  end

  def update
    if @setting.update(setting_params)
      render json: @setting
    else
      render_error
    end
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:focus_time, :short_break, :long_break, :number_sessions)
  end

  def render_error
    render json: { errors: @setting.errors.full_messages },
      status: :unprocessable_entity
  end
end
