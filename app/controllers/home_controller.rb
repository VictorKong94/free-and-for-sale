class HomeController < ApplicationController

  def index

    # Organize sale posts
    @all_sale_posts = SalePost.where(sold: false)
    @all_sale_posts = @all_sale_posts.sort_by { |f| f.updated_at }.reverse!

    # Organize buy posts
    @all_buy_posts = BuyPost.where(filled: false)
    @all_buy_posts = @all_buy_posts.sort_by { |f| f.updated_at }.reverse!

  end

end
