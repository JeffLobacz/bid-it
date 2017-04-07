class User < ActiveRecord::Base

  # scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }

  # @employee = User.find(params[:id])
  # @schedule = Shift.find_by(id: @employee.shift)
  # validates :@schedule.id, presence: true, :if => :shift_available?
  #
  # def shift_available?
  #   if @schedule.id != nil
  #     errors.add("Sorry, shift not available.")
  #   end
  # end

  # validates :must_do_begin_date, presence: true, :if => :must_do_begin_date_after_due_date?
  #
  # def must_do_begin_date_after_due_date?
  #   if $step == "must" && must_do_begin_date.present? && must_do_begin_date > due_date
  #     errors.add(:must_do_begin_date, "must be BEFORE or EQUAL to Due Date.")
  #   end
  # end


end
