class Appointment < ApplicationRecord
  belongs_to :medic
  belongs_to :patient
  validates :date, presence: true, comparison: {less_than: Time.now}
  validates :time, presence: true
  validates :medic_id, presence: true
  validates :patient_id, presence: true
end
