class User < ActiveRecord::Base
  has_one :shift
  # accepts_nested_attributes_for :shift

  # scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }

  after_save :mark_shift_taken

  # validates_presence_of :shift, numericality: true, on: :update
  #
  # def shift_ok?
  #   if shift <= 0 || shift > Shift.count || Shift.find_by(id: shift).last_name != nil
  #     errors.add(:shift, "Sorry, shift not within range or already taken. Try again with different selection.")
  #   end
  # end

  private

  def mark_shift_taken
    $shift.record_takers_last_name
  end

end
