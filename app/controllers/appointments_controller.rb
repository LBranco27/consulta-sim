class AppointmentsController < ApplicationController
  def create
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointment.create(appointment_params)
    redirect_to patient_path(@patient)
  end
end

def destroy
  @patient = Patient.find(params[:patient_id])
  @appointment = @patient.appointment.find(params[:id])
  @appointment.destroy
  redirect_to patient_path(@patient), status: :see_other
end

private
def appointment_params
  params.require(:appointment).permit(:date, :time, :medic_id)
end
