class Address < ApplicationRecord
  # Fields should be free of needless validations. There are no strict rules about naming cities, streets, etc.
  belongs_to :patient
  validates :cep, presence: true, length: { is: 8 }, uniqueness: true, numericality: { only_integer: true, message: "should only contain numbers" }
  validates :city, presence: true
  validates :zone, presence: true
  validates :street, presence: true
  validates :complement, presence: true
  validates :patient, presence: true
end
