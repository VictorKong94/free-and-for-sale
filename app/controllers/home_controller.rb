class HomeController < ApplicationController

  def index
    @all_sale_posts = SalePost.all
    @all_buy_posts = BuyPost.all
    @user = User.find(params[:id])
  end
end
