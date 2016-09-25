class Seniority < ActiveRecord::Base

  scope :sort_by_bid_number, -> { order(bid_number: :asc) }

  # def self.qualification
  #   ["Expeditor", "a", "b", "c", "d", "e"]
  # end

end
