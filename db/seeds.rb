
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


50.times do
	City.create!(name:Faker::Address.city)
end 

10.times do
	Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample, specialty:["Chirurgien-dentiste", "Médecin généraliste","Pédiatre","Gynécologue","Ophtalmologue", "Ostéopathe","Masseur-kinésithérapeute","Pédicure-podologue","ORL"].sample)
end


20.times do
	Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

5.times do 
	Appointment.create!(patient: Patient.all.sample , doctor: Doctor.all.sample, date:Faker::Time.between_dates(from: Date.today, to: Date.today + 357, period: :day), city: City.all.sample)
end

20.times do
	JoinTablePatientDoctorApointment.create!(patient: Patient.all.sample , doctor: Doctor.all.sample, appointment: Appointment.all.sample, city: City.all.sample)
end


