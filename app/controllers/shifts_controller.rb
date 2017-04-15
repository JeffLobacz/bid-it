class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
    @shifts = Shift.all
  end

  def create
  end

  def update
    # @user = User.find_by(shift_id: )
    # @user.assign_attributes(user_params)
    @shift = Shift.find_by(id: $user.shift_id)

    if @shift.save
      flash[:notice] = "Shift table was updated."
      redirect_to edit_user_path
    else
      flash[:error] = "There was an error updating the Shift table. Please try again."
      render :edit
    end


    # @user = User.find(:id)
    # @shift = Shift.find(id: @user.shift)
    # @shift.assign_attributes(shift_params)

    # if @user.save
    #   flash[:notice] = "Shift attribute was saved."
    #   redirect_to users_cc_path
    # else
    #   flash[:error] = "There was an error saving the shift attribute. Please try again."
    #   render :edit
    # end
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
