class City < ApplicationRecord
	has_many :join_table_patient_doctor_apointments
	has_many :patients, through: :join_table_patient_doctor_apointments
	has_many :doctors, through: :join_table_patient_doctor_apointments
	has_many :appointments, through: :join_table_patient_doctor_apointments
end
