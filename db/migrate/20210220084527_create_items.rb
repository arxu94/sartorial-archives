class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :status
      t.integer :price
      t.string :brand

      t.timestamps
    end
  end
end
