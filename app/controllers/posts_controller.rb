class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
    @search_params = user_search_params
    @search_post = Post.search(@search_params).includes(:prefecture)
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:text)
  end

  def user_search_params
    params.fetch(:search, {}).permit(:text)
  end
end
