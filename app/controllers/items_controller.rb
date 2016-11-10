class ItemsController < ApplicationController

  def create_post
    @item = item.new
    @item.name = new_params[:description]
    @item.user_id = current_user.id
    @item.price = new_params[:price]
    @item.sold = false
    @item.photo = new_params[:photo]
    if @item.save
      flash[:error] = nil
      redirect_to current_user
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      render 'items/new'
    end
  end

  def delete
    @item = item.find(params[:id])
    @item.destroy
  end

  private

  def new_params
    params.require(:item).permit(:description, :price, :photo)
  end

end
