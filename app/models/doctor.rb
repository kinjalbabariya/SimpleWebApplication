class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :doctor_patients
	has_many :patients, through: :doctor_patients
	has_many :appointments, through: :doctor_patients

	has_many :doctor_availabilies
	has_many :completed_appointments,  -> { where(completed: true)}, 
		through: :doctor_patients,
		source: :appointments
end
