class HomeController < ApplicationController

  def index

    # Organize sale posts
    @all_sale_posts = SalePost.where(sold: false)
    @all_sale_posts = @all_sale_posts.sort_by { |post| post.updated_at }

    # Organize buy posts
    @all_buy_posts = BuyPost.where(filled: false)
    @all_buy_posts = @all_buy_posts.sort_by { |post| post.updated_at }

  end

end
