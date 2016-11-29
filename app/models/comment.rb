class Comment < ActiveRecord::Base
  belongs_to :message
  belongs_to :sale_post
  belongs_to :buy_post
  belongs_to :user
end
