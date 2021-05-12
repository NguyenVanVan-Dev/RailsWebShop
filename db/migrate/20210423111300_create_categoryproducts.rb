class CreateCategoryproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :categoryproducts do |t|
      t.string :name
      t.integer :parent
      t.string :slug
      t.string :desc
      t.integer :status

      t.timestamps
    end
  end
end
