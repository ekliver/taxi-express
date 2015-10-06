class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :sexo
      t.string :formapago
      t.string :licencia
      t.string :tarjeta
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
