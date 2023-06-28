require "test_helper"

class MedicTest < ActiveSupport::TestCase
  fixtures :medics
  test "Medic should not be created with empty variables" do
    medic = Medic.new
    assert_not medic.save, "Created with empty variables"
  end

  test "Medic should not be created with wrong cpf" do
    medic = medics(:one)
    medic.cpf = "123"
    assert_not medic.save, "Created with wrong cpf"
  end
end
