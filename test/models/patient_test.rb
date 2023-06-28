require "test_helper"

class PatientTest < ActiveSupport::TestCase
  test "patient should not be created with empty variables" do
    patient = Patient.new
    assert_not patient.save, "Created patient with null variables"
  end

  test "patient should be created with not null and correct variables" do
    patient = Patient.new(name: "Reinhardt", birth: Date.new(1927, 7, 27), cpf: "10598412523", email: "reinhardt@example.com")
    assert patient.save
  end
end
