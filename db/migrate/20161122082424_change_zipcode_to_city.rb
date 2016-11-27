class ChangeZipcodeToCity < ActiveRecord::Migration
  def change
    remove_column :users, :zipcode
    add_column :users, :city, :string
    change_column :users, :photo, :text
    change_column :buy_posts, :photo, :text
    change_column :sale_posts, :photo, :text
  end
end
