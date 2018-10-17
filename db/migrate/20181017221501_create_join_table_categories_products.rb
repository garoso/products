class CreateJoinTableCategoriesProducts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :products do |t|
      t.references :category, foreign_key: true
      # t.index [:product_id, :category_id]
    end
  end
end
