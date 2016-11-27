class ExtendPhotoUrlLength < ActiveRecord::Migration
  def change
    change_column :users, :photo, :text, :limit => 65536
    change_column :buy_posts, :photo, :text, :limit => 65536
    change_column :sale_posts, :photo, :text, :limit => 65536
  end
end
