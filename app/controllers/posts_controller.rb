class PostsController < ApplicationController
#  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :index
    else
      render :new
    end
  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
                 if @post.update_attributes(post_params)
                   redirect_to post_path(@post)
                 else
                   render :edit
                 end
       end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to action: :index
    end

  end

  private

  def post_params
    params.require(:post).permit(:title, :post)
  end

end