# frozen_string_literal: true

require 'rails_helper'
RSpec.describe SnsLink do
  describe 'associations' do
    it { is_expected.to belong_to(:sns_linkable) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_presence_of(:link_type) }
    it { is_expected.to validate_length_of(:url).is_at_most(100) }
  end

  describe 'enums' do
    # rubocop:disable Layout/LineLength
    it { is_expected.to define_enum_for(:link_type).with_values(twitter: 0, facebook: 1, instagram: 2, youtube: 3, note: 4, linkedin: 5, researchmap: 6, homepage: 7, other: 8) }
    # rubocop:enable Layout/LineLength
  end
end
