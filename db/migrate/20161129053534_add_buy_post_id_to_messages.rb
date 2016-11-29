class AddBuyPostIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :buy_post_id, :integer
  end
end
