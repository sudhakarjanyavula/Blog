class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  validate :app_date

  def app_date
    if appointment_date.present? && appointment_date < date.today
      errors.add(appointment_date: "can't be in the past")
    end
  end
end
