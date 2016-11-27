class BuyPostsController < ApplicationController

  def index
    @post = BuyPost.all
  end

  def new
    @buy_post = BuyPost.new
  end

  def create
    @buy_post = BuyPost.new(new_params)
    @buy_post.name = new_params[:name]
    @buy_post.user_id = current_user.id
    @buy_post.price = new_params[:price]
    @buy_post.filled = false
    @buy_post.photo = new_params[:photo]
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
    @buy_post.sold ^= true
  end

  def delete
    @buy_post = BuyPost.find(params[:id])
    @buy_post.destroy
  end

  private

  def new_params
    params.require(:buy_post).permit(:name, :price, :photo)
  end

end
