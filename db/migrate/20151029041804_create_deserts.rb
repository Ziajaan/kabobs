class CreateDeserts < ActiveRecord::Migration
  def change
    create_table :deserts do |t|
      t.string :name
      t.integer :cost
      t.string :image

      t.timestamps null: false
    end
  end
end
