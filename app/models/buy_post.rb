class BuyPost < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one :message
end
