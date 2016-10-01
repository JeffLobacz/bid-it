class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
    # @shift = Shift.where(shift_id: shift)
    # @sunday = Sunday.where(shift_id: @shift)
    # @categories = Category.where(user_id: current_user)
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
