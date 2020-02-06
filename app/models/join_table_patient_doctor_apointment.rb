class JoinTablePatientDoctorApointment < ApplicationRecord
	belongs_to :city
	belongs_to :doctor
	belongs_to :patient
	belongs_to :appointment
end
