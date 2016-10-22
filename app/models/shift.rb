class Shift < ActiveRecord::Base
  scope :sort_by_days_off, -> { order(days_off: :asc) }

end
