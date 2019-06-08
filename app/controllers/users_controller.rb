class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
    if @user.posts.any?
      @post = Post.find_by(params[:id])
    end
  end
end
