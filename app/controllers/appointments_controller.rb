class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find_by(id: params[:id])
        @doctor = @appointment.doctor
        @patient = @appointment.patient
    end
end