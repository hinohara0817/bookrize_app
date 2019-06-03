class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user =User.find_by(params[:id])
    @posts =@user.posts.all
    @post = current_user.posts.build
  end

end
