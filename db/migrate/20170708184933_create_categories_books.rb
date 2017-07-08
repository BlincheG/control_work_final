class CreateCategoriesBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_books do |t|
      t.references :category, foreign_key: true
      t.references :book, foreign_key: true
    end
  end
end
