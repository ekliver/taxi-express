class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :sexo
      t.string :formapago
      t.string :tarjeta
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
