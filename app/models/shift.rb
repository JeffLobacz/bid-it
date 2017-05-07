class Shift < ActiveRecord::Base
  # belongs_to :user

  scope :sort_by_id, -> { order(id: :asc) }

end
