class AddFixToUsers < ActiveRecord::Migration
  def change
    add_column :users, :credits, :integer
  end
end
