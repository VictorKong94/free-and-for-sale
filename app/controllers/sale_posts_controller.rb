class SalePostsController < ApplicationController

  def index
    @post = SalePost.all
  end

  def new
    @sale_post = SalePost.new
  end

  def create
    @sale_post = SalePost.new
    @sale_post.name = params[:name]
    @sale_post.user_id = current_user.id
    @sale_post.price = params[:price]
    @sale_post.sold = false
    @sale_post.photo = params[:photo]
    if @sale_post.save
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @sale_post.errors.full_messages.to_sentence
      render 'sale_posts/new'
    end
  end

  def edit
    @sale_post = SalePost.find(params[:id])
  end

  def update
    @sale_post = SalePost.find(params[:id])
    if @sale_post.update_attributes(sale_post_params)
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @sale_post.errors.full_messages.to_sentence
      render 'sale_posts/edit'
    end
  end

  def toggle
    @sale_post = SalePost.find(params[:id])
    @sale_post.sold ^= true
    @sale_post.save
    redirect_to current_user
  end

  def delete
    @sale_post = SalePost.find(params[:id])
    @sale_post.destroy
    redirect_to current_user
  end

  private

    def sale_post_params
      params.require(:sale_post).permit(:name, :price, :photo)
    end

end
