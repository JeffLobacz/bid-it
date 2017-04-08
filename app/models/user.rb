class User < ActiveRecord::Base

  # scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }


  validates_presence_of :shift, numericality: true, on: :update, :if => :shift_ok?
  #
  def shift_ok?
    if shift <= 0 || shift > Shift.count || Shift.find_by(shift_number: shift).employee_number != nil
      errors.add(:shift, "Sorry, shift not within range or already taken. Try again with different selection.")
    end
  end

  # after_update :mark_shift_taken

  private

  # def mark_shift_taken
  #   user = User.find_by(shift: :shift)
  #   @schedule = Shift.find_by(shift_number: user.bid_number)
  #   @schedule.assign_attributes(employee_number: user.employee_number)
  #   @schedule.assign_attributes(last_name: user.last_name)
  #   @schedule.assign_attributes(first_name: user.first_name)
  #   if @schedule.save
  #     flash[:notice] = "Shift table was updated."
  #     redirect_to user_path
  #   else
  #     flash[:error] = "There was an error updating the Shift table. Please try again."
  #     render :edit
  #   end
  # end

end
