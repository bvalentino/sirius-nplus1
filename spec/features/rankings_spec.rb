require 'rails_helper'

RSpec.describe 'Authors' do
  describe 'GET #show' do
    before { visit ranking_path }

    it 'displays the heading' do
      expect(page).to have_content('Ranking')
    end
  end
end
