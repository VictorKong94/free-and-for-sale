class AddPhotoToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :photo, :text, limit: 65536
  end
end
