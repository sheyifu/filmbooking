class RepliesController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@reply = @post.replies.create(params[:reply].permit(:reply))
		@reply.user_id = current_user.id if current_user
		@reply.save

		if @reply.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:post_id])
		@reply = @post.replies.find(params[:id])
	end

	def update
		@post = Post.find(params[:post_id])
		@reply = @post.replies.find(params[:id])

		if @reply.update(params[:reply].permit(:reply))
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@reply = @post.replies.find(params[:id])
		@reply.destroy
		redirect_to post_path(@post)
	end

end
