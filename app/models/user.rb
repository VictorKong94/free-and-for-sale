class User < ActiveRecord::Base
  has_many :buy_posts
  has_many :sale_posts
end
