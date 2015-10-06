class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :passenger, index: true, foreign_key: true
      t.string :distini
      t.string :distfin
      t.integer :monto
      t.string :direcexini
      t.string :directexfin
      t.integer :pasajeros
      t.string :tipovehiculo
      t.string :tipopago
      t.string :estado

      t.timestamps null: false
    end
  end
end
