class BlogPostsController < ApplicationController
  # def new
  #   @blog_post = BlogPost.new
  #   BlogPost.save
  # end

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  # def create
  #   @blog_post = BlogPost.
  #   redirect_to action: :index
  # end
end