class Seniority < ActiveRecord::Base

  scope :sort_by_bid_number, -> { order(bid_number: :asc) }
  scope :sort_by_seniority, -> { order(seniority: :asc) }

end
