class CreateMedics < ActiveRecord::Migration[7.0]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :cpf
      t.string :email
      t.string :speciality
      t.string :crm

      t.timestamps
    end
  end
end
