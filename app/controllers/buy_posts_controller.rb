class BuyPostsController < ApplicationController

  def index
    @post = BuyPost.all
  end

  def new
    @buy_post = BuyPost.new
  end

  def create
    @buy_post = BuyPost.new
    @buy_post.name = params[:name]
    @buy_post.user_id = current_user.id
    @buy_post.price = params[:price]
    @buy_post.filled = false
    @buy_post.photo = params[:photo]
    if @buy_post.save
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @buy_post.errors.full_messages.to_sentence
      render 'buy_posts/new'
    end
  end

  def toggle
    @buy_post = BuyPost.find(params[:id])
    @buy_post.filled ^= true
    redirect_to current_user
  end

  def delete
    @buy_post = BuyPost.find(params[:id])
    @buy_post.destroy
    redirect_to current_user
  end

end
