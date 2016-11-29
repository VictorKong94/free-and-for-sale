class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def show
	end

	def new_sale
		@post = SalePost.find(params[:id])
		if @post.message
			redirect_to message_path(@post.message)
		else
			@message = current_user.messages.build
			@message = Message.new
			@message.sale_post = @post
			@message.user = current_user
			@message.title = @post.name
			@message.description = @post.price
			@message.save
			redirect_to message_path(@message)
		end		
	end

	def new_buy
		@post = BuyPost.find(params[:id])
		if @post.message
			redirect_to message_path(@post.message)
		else
			@message = current_user.messages.build
			@message = Message.new
			@message.buy_post = @post
			@message.user = current_user
			@message.title = @post.name
			@message.description = @post.price
			@message.save
			redirect_to message_path(@message)
		end		
	end

	def find_message
		@message = Message.find(params[:id])
	end

	def edit
	end

	def update
		if @message.update(message_params)
			redirect_to message_path
		else
			render 'edit'
		end
	end

	def destroy
		@message.destroy
		redirect_to :messages => 'index', :action=> 'index'
	end

end