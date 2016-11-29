class Message < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :sale_post
  	belongs_to :buy_post
end
