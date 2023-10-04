class RankingsController < ApplicationController
  def show
    @authors = Author.all.sort_by do |author|
      author.posts.size
    end.reverse.first(10)
  end
end
