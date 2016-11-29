class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	has_many :comments
	belongs_to :sale_post
  	belongs_to :buy_post
end
