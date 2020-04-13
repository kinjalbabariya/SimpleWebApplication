
class Appointment < ApplicationRecord
	belongs_to :doctor_patient

	has_many :patients, through: :doctor_patient
	has_many :doctors, through: :doctor_patient
end
