class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :isbn
      t.string :thumbnail
      t.string :slug
      t.integer :credits
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
