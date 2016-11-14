class UsersController < ApplicationController

  def index
    @users = User.all
    @users = User.sort_by { |trainer| user.name }
  end

  def show

    @user = User.find(params[:id])

    # Organize buy posts
    @all_buy_posts = BuyPost.all
    @all_buy_posts = @all_buy_posts.sort_by { |post| post.updated_at }
    @buy_posts = BuyPost.where(user_id: params[:id])
    @buy_posts = @buy_posts.sort_by { |post| post.updated_at }

    # Organize sale posts
    @all_sale_posts = SalePost.all
    @all_sale_posts = @all_sale_posts.sort_by { |post| post.updated_at }
    @sale_posts = SalePost.where(user_id: params[:id])
    @sale_posts = @sale_posts.sort_by { |post| post.updated_at }

  end

end
