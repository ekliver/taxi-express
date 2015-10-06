class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :marca
      t.string :modelo
      t.string :ano
      t.string :color
      t.string :pasajeros
      t.string :tipo
      t.references :passenger, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
