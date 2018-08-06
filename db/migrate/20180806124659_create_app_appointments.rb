class CreateAppAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :app_appointments do |t|
      t.text :AppointmentBody
      t.datetime :DatenTime

      t.timestamps
    end
  end
end
