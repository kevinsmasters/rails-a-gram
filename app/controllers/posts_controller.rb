class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update ]
  before_action :authenticate_user!, except: [:index, :show]
  include Pagy::Backend

  # GET /posts or /posts.json
  def index
    @posts = Post.order(:created_at => :asc)
    @pagy, @posts = pagy_countless(@posts, limit: 2)
  end

  # GET /posts/1 or /posts/1.json
  def show
    @comment = @post.comments.build
  end

  def discover
    @posts = Post.order(:created_at => :asc)
    @pagy, @posts = pagy_countless(@posts, limit: 2)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      flash[:notice] = "Post added!"
      redirect_to @post
    else
      render 'new'
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        flash[:notice] = 'Post was updated!'
        redirect_to @post
      else
        render 'edit'
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    flash[:notice] = "Post deleted"
    # @post.destroy
    Post.find(params[:id]).destroy
    redirect_to current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description, :keywords, images: [])
    end
end
