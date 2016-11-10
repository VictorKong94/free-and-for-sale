class UsersController < ApplicationController

  def index
    @users = User.all
    @users = User.sort_by { |trainer| user.name }
  end

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: params[:id])
    @items = @items.sort_by { |item| item.name }
  end

end
