class CreateDoctorAvailabilies < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_availabilies do |t|
    	t.references :doctor, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :interval, default: 1, null: false
      t.timestamps
    end
  end
end
