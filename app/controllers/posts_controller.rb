class PostsController < ApplicationController
  def index
    @posts = Post.includes(author: [:country]).order(:published_at)
  end
end
