class CreateKabobs < ActiveRecord::Migration
  def change
    create_table :kabobs do |t|
      t.string :name
      t.string :sides
      t.integer :cost
      t.string :image

      t.timestamps null: false
    end
  end
end
