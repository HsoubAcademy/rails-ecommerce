class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :details
      t.float :price
      t.string :image_url
      t.integer :size
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
