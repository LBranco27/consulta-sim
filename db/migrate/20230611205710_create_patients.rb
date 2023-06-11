class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :birth
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
