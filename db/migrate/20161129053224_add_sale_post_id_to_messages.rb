class AddSalePostIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :sale_post_id, :integer
  end
end
