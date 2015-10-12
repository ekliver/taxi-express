class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :rutacon
      t.integer :precio

      t.timestamps null: false
    end
  end
end
