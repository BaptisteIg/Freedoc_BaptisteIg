# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointement.destroy_all
City.destroy_all
JoinTableDoctorSpecialty.destroy_all
Specialty.destroy_all

City.create(name: "Paris")

Specialty.create(specialty: "Cardiolog")
Specialty.create(specialty: "Dentist")

Doctor.create(first_name: "Dr.Damien", last_name:"Yup", zip_code:"44980", city_id: City.first.id)
Doctor.create(first_name: "Dr.Jack", last_name:"Yup", zip_code:"44920", city_id: City.first.id)

JoinTableDoctorSpecialty.create(doctor_id: Doctor.first.id, specialty_id: Specialty.first.id)

Patient.create(first_name: "Claude", last_name: "Dubois", city_id: City.first.id)
Patient.create(first_name: "Jean", last_name: "Dupont", city_id: City.first.id)
Patient.create(first_name: "Germain", last_name: "Dub", city_id: City.first.id)


Appointement.create(date: Time.now, doctor_id: Doctor.first.id, patient_id: Patient.first.id, city_id: City.first.id)
