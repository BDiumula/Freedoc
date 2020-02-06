class CreateJoinTablePatientDoctorApointments < ActiveRecord::Migration[5.2]
	def change
		create_table :join_table_patient_doctor_apointments do |t|
			t.belongs_to :doctor, index: true
			t.belongs_to :patient, index: true
			t.belongs_to :city, index: true
			t.belongs_to :appointment, index: true
			t.timestamps
		end
	end
end
