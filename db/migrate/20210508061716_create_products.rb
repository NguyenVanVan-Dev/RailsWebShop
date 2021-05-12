class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.integer :quantity
      t.integer :display
      t.string :content
      t.float :price
      t.integer :status

      t.timestamps
    end
  end
end
