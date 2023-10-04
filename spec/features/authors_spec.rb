require 'rails_helper'

RSpec.describe 'Authors' do
  describe 'GET #show' do
    let(:author) { Author.first }

    before { visit author_path(author) }

    it 'displays the author name' do
      expect(page).to have_content(author.name)
    end

    it 'displays the number of posts' do
      posts_count = author.posts.count

      expect(page).to have_content(posts_count == 1 ? '1 post' : "#{posts_count} posts")
    end
  end
end
