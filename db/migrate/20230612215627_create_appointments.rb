class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.time :time
      t.date :date

      t.references :patient, null: false, foreign_key: true
      t.references :medic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
