class Medic < ApplicationRecord

  validates :name, presence: true
  validates :crm, presence:true
  validates :speciality, presence: true
end
