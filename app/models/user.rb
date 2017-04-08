class User < ActiveRecord::Base

  # scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }

  after_update :mark_shift_taken

  validates_presence_of :shift, numericality: true, on: :update
  #
  # def shift_ok
  #   if shift <= 0 || shift > Shift.count || Shift.find_by(shift_number: shift).employee_number != nil
  #     # User.errors.messages(:shift, "Sorry, shift not within range or already taken. Try again with different selection.")
  #   end
  # end


  private

  def mark_shift_taken
    @schedule = Shift.find_by(shift_number: @employee.shift)
    @schedule.assign_attributes(employee_number: @employee.employee_number)
    @schedule.assign_attributes(last_name: @employee.last_name)
    @schedule.assign_attributes(first_name: @employee.first_name)
    if @schedule.save
      flash[:notice] = "Shift table was updated."
      redirect_to user_path
    else
      flash[:error] = "There was an error updating the Shift table. Please try again."
      render :edit
    end
  end

end
