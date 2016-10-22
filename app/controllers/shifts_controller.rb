class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
    @shifts = Shift.all
  end

  def create
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

end
