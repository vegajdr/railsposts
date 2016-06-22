class PostsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    @posts = user.posts
  end

  def show
    @post = current_user.posts.find params[:id]
  end

  def create
    post = current_user.posts.create!(title: params[:title], content: params[:content])
    redirect_to user_posts_path(current_user.id)
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(title: params[:title], content: params[:content])
    redirect_to user_posts_path(current_user.id)
  end

  def destroy
    if current_user
      post = current_user.posts.find params[:id]
      post.destroy
      redirect_to user_posts_path(current_user.id)
    end
  end

end
