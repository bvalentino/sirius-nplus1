require 'rails_helper'

RSpec.describe Post do
  describe 'associations' do
    it { is_expected.to belong_to(:author) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:message) }
  end
end
