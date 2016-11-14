class CreateBuyPosts < ActiveRecord::Migration
  def change
    create_table :buy_posts do |t|
      t.string :name
      t.integer :user_id
      t.integer :price
      t.boolean :sold
      t.string :photo

      t.timestamps
    end
  end
end
