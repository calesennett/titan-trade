class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.boolean :pending

      t.timestamps
    end
  end
end
