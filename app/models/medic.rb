class Medic < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, numericality: { only_integer: true, message: "should only contain numbers" }
  validates :email, presence: true
  validates :crm, presence:true, uniqueness: true, numericality: { only_integer: true }
  validates :speciality, presence: true
end
