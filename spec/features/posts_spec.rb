require 'rails_helper'

RSpec.describe 'Posts' do
  describe 'GET #index' do
    before { visit posts_path }

    it 'displays the heading' do
      expect(page).to have_content('Latest posts')
    end

    it 'displays the latest posts' do
      Post.find_each do |post|
        expect(page).to have_content(post.message)
      end
    end
  end
end
