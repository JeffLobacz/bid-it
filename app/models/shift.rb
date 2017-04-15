class Shift < ActiveRecord::Base
  belongs_to :user
  # scope :sort_by_days_off, -> { order(days_off: :asc) }

  def record_takers_last_name
    update_attribute(:user_id, $user.id)
    update_attribute(:first_name, $user.first_name)
    update_attribute(:last_name, $user.last_name)
    update_attribute(:employee_number, $user.employee_number)
  end

end
