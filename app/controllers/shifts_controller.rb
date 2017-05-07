class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
    @shifts = Shift.all
  end

  def create
  end

  def show
    @shifts = Shift.all
    @grouped_by_location = @shifts.group_by { |t| t.detail_location }

  end

  def update
  end

  def cc
    @shifts = Shift.all
  end

  def cc_open
    @shifts = Shift.all
  end

  def cc_watched
    @shifts = Shift.all
  end

  def cc_watched_open
    @shifts = Shift.all
  end

  def ft
    @shifts = Shift.all
  end

  def pt
    @shifts = Shift.all
  end

  private

  def shift_params
    params.require(:shift).permit(:last_name)
  end

end
