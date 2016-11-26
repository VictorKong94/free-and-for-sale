class SalePostsController < ApplicationController

  def index
    @post = SalePost.all
  end

  def new
    @sale_post = SalePost.new
  end

  def create
    @sale_post = SalePost.new
    @sale_post.name = new_params[:name]
    @sale_post.user_id = current_user.id
    @sale_post.price = new_params[:price]
    @sale_post.sold = false
    @sale_post.photo = new_params[:photo]
    if @sale_post.save
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @sale_post.errors.full_messages.to_sentence
      render 'sale_posts/new'
    end
  end

  def toggle
    @sale_post = SalePost.find(params[:id])
    @sale_post.sold ^= true
  end

  def delete
    @sale_post = SalePost.find(params[:id])
    @sale_post.destroy
  end

  private

  def new_params
    params.require(:item).permit(:name, :price, :photo)
  end

end
