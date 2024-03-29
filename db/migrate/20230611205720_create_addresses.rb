class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :city
      t.string :zone
      t.string :street
      t.string :complement
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
