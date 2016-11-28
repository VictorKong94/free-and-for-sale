class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index

    @users = User.all
    @users = @users.sort_by { |user| user.name }

    # Organize sale posts
    @active_sale_posts = SalePost.where(sold: false)
    @closed_sale_posts = SalePost.where(sold: true)

    # Organize buy posts
    @active_buy_posts = BuyPost.where(filled: false)
    @closed_buy_posts = BuyPost.where(filled: true)

  end

  def show

    @user = User.find(params[:id])

    # Organize sale posts
    @sale_posts = SalePost.where(user_id: params[:id])
    @sale_posts = @sale_posts.sort_by { |post| post.updated_at }

    # Organize buy posts
    @buy_posts = BuyPost.where(user_id: params[:id])
    @buy_posts = @buy_posts.sort_by { |post| post.updated_at }

    # redirect_to :controller => 'users', :action => 'show', :id => current_user.id

  end

end
