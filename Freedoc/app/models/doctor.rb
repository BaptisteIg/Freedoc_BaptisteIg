class Doctor < ApplicationRecord
    belongs_to :city
    has_many :appointements
    has_many :patients, through: :appointements
    has_many :join_table_doctor_specialties
    has_many :specialties, through: :join_table_doctor_specialties
end
