class Medic < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
  validates :crm, presence:true
  validates :speciality, presence: true
end
