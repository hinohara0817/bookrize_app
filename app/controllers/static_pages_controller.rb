class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @post = Post.find_by(params[:id])
      @feed_items = current_user.feed.all
    end
  end

  def about
  end
end
