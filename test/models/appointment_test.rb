require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  fixtures :appointments
  test "should not be saved with date older than now" do
    appointment = appointments(:one)
    appointment.date = Date.new(1500, 2, 27)
    assert_not appointment.save
  end

  test "should not be saved with empty time" do
    appointment = appointments(:two)
    appointment.time = ""
    assert_not appointment.save
  end
end
