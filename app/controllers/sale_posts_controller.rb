class SalePostsController < ApplicationController
  skip_before_filter :verify_authenticity_token

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

  def toggle
    @sale_post = SalePost.find(params[:id])
    @sale_post.sold ^= true
  end

  def delete
    @sale_post = SalePost.find(params[:id])
    @sale_post.destroy
  end

end
