class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :photo, :string
    add_column :users, :zipcode, :integer
  end
end
