class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def show
	end

	def new
		@post = SalePost.find(params[:id])
		if @post.message
			redirect_to message_path(@post.message)
		else
			@message = current_user.messages.build
			@message = Message.new
			@message.user = current_user
			@message.sale_post_id = @post
			@message.title = @post.name
			@message.description = @post.price 
			@message.save
			redirect_to message_path(@message)
		end
	end

	def create
		# @message = current_user.messages.build(message_params)
		# if @message.save
		# 	redirect_to :messages => 'index', :action=> 'index'
		# else
		# 	render 'new'
		# end
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

	# private
	# 	def message_params
	# 		params.require(:message).permit(:post_id)
	# 	end
end