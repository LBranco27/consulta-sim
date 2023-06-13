class Patient < ApplicationRecord
  has_one :address, dependent: :destroy
  has_many :appointment, dependent: :destroy
  accepts_nested_attributes_for :address

  validates :name, presence: true
  validates :birth, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
end
