class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    @users = User.sort_by { |trainer| user.name }
  end

  def show

    @user = User.find(params[:id])

    # Organize buy posts
    @buy_posts = BuyPost.where(user_id: params[:id])
    @buy_posts = @buy_posts.sort_by { |post| post.updated_at }

    # Organize sale posts
    @sale_posts = SalePost.where(user_id: params[:id])
    @sale_posts = @sale_posts.sort_by { |post| post.updated_at }

    # redirect_to :controller => 'users', :action => 'show', :id => current_user.id

  end

end
