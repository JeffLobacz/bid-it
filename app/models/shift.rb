class Shift < ActiveRecord::Base
  # belongs_to :user

  scope :sort_by_detail_location, -> { order(detail_location: :asc) }

end
