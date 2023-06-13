class Patient < ApplicationRecord
  has_one :address, dependent: :destroy
  has_many :appointments, dependent: :destroy
  accepts_nested_attributes_for :address

  validates :name, presence: true
  validates :birth, presence: true, comparison: {less_than: Time.now}
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, numericality: { only_integer: true, message: "should only contain numbers" }
  validates :email, presence: true
end
