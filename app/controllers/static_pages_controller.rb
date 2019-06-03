class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
    @post = current_user.posts.build
    @feed_items = current_user.feed.all
    end
  end

  def about
  end
end
