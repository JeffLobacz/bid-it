class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
  end

  def create
  end

  def cc
    @shifts = Shift.all
  end

  def ft
    @shifts = Shift.all
  end

  def pt
    @shifts = Shift.all
  end

  def cc_watched
    @shifts = Shift.all
  end

  def open_cc
    @shifts = Shift.all
  end

end
