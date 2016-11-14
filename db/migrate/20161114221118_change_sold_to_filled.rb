class ChangeSoldToFilled < ActiveRecord::Migration
  def change
    rename_column :buy_posts, :sold, :filled
  end
end
