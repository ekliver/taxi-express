class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :direcini
      t.string :direcfin
      t.integer :npass
      t.string :fpago
      t.string :estado
      t.integer :calif
      t.references :passenger, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true
      t.references :route, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
