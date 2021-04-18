class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_slug
      t.integer :category_parent
      t.string :category_name
      t.string :category_status
      t.string :category_desc

      t.timestamps
    end
  end
end
