class RankingsController < ApplicationController
  def show
    @authors = Author.order(posts_count: :desc).limit(10)
  end
end
