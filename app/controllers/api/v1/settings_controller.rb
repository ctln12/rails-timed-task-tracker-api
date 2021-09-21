class Api::V1::SettingsController < ApplicationController
  before_action :set_setting, only: [:show]

  def show
    render json: @setting
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
