class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :dni
      t.string :genero
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
