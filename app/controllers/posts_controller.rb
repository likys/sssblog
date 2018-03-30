class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit , :update , :destroy]
	# http_basic_authenticate_with name: "likys",password: "1234",except: [:index,:show]

	def index
		@posts = Post.all
	end

	def show
		# render :layout => nil
	end

	def new
		@post = Post.new
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to about_path
	end

	def create
		@post = current_user.posts.new post_params
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	private 
	def post_params
		params.require(:post).permit(:title,:body)
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
