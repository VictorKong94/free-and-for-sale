class RemovePostIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :post_id, :integer
  end
end
