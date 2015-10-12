class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :marca
      t.string :modelo
      t.integer :ano
      t.string :color
      t.integer :npass
      t.string :tipo
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
