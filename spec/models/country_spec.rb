require 'rails_helper'

RSpec.describe Country do
  describe 'associations' do
    it { is_expected.to have_many(:authors).dependent(:restrict_with_error) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
