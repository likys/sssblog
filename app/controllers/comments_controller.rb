class CommentsController < ApplicationController

	before_action :user_signed_in?
	# http_basic_authenticate_with name: "likys",password:"1234",only: [:destroy]

	def create
		@post = Post.find(params[:post_id])
		_params = comment_params.merge({user_id: current_user.id})
		@comment = @post.comments.create(_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find_by_id(params[:post_id])
		@comment = current_user.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

end
