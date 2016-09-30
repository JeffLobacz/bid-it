class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
    @sunday = Sunday.find([:shift_id])
    # @sunday = Sunday.find()
  end

  def show
  end

  private

  def shift_params
    params.require(:shift).permit(:shift_number)
  end

  def sunday_params
    params.require(:sunday).permit(:start_time, :quit_time, :location)
  end

end
