# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ResearchOutput do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(255) }
    it { is_expected.to validate_length_of(:authors).is_at_most(255) }
    it { is_expected.to validate_length_of(:description).is_at_most(65_535) }
    it { is_expected.to validate_presence_of(:published_on) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:review_status) }
    it { is_expected.to validate_length_of(:url).is_at_most(255) }
  end
end
