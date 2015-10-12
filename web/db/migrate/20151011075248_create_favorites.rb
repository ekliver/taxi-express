class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :passenger, index: true, foreign_key: true
      t.references :route, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
