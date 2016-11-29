class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def show
	end

	def new
		@post = SalePost.find_by_id(params[:id])
		if @post.nil?
			@post = BuyPost.find_by_id(params[:id])
		end
		if @post.message
			redirect_to message_path(@post.message)
		else
			@message = current_user.messages.build
			@message = Message.new
			if @post.is_a?(SalePost)
				@message.sale_post = @post
			else
				@message.buy_post = @post
			end
			@message.user = current_user
			@message.title = @post.name
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