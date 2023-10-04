require 'rails_helper'

RSpec.describe Author do
  describe 'associations' do
    it { is_expected.to belong_to(:country) }
    it { is_expected.to have_many(:posts).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
