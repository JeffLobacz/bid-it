class SundaysController < ApplicationController
  def index
  end

  def show
  end

  private

  def sunday_params
    params.require(:sunday).permit(:start_time, :quit_time, :location)
  end

end
