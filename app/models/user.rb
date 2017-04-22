class User < ActiveRecord::Base
  # has_one :shift

  # scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }

  validates_presence_of :shift_id, :on => :update
  validates_uniqueness_of :shift_id, :on => :update
  validates_numericality_of :shift_id, :greater_than_or_equal_to => 1, :less_than_or_equal_to => Shift.where(employment_status: "CC").count, :on => :update

end
