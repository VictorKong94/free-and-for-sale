class BuyPostsController < ApplicationController

  def index
    @all_buy_posts = BuyPost.where(filled: false)
    @all_buy_posts = @all_buy_posts.sort_by { |f| f.updated_at }.reverse!
  end

  def new
    @buy_post = BuyPost.new
  end

  def show
    @sale_post = BuyPost.find(params[:id])
    @message = Message.find(params[:id])
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

  def edit
    @buy_post = BuyPost.find(params[:id])
  end

  def update
    @buy_post = BuyPost.find(params[:id])
    if @buy_post.update_attributes(buy_post_params)
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @buy_post.errors.full_messages.to_sentence
      render 'buy_posts/edit'
    end
  end

  def toggle
    @buy_post = BuyPost.find(params[:id])
    @buy_post.filled ^= true
    @buy_post.save
    redirect_to current_user
  end

  def delete
    @buy_post = BuyPost.find(params[:id])
    @buy_post.destroy
    redirect_to current_user
  end

  private

    def buy_post_params
      params.require(:buy_post).permit(:name, :price, :photo)
    end

end
