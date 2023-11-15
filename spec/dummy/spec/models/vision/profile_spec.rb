# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vision::Profile do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:affiliations).class_name('Vision::Affiliation').dependent(:destroy) }
    it { is_expected.to have_many(:research_fields).class_name('Vision::ResearchField').dependent(:destroy) }
    it { is_expected.to have_many(:research_keywords).class_name('Vision::ResearchKeyword').dependent(:destroy) }
    # rubocop:disable Layout/LineLength
    it { is_expected.to have_many(:research_publication_links).class_name('Vision::ResearchPublicationLink').dependent(:destroy) }
    # rubocop:enable Layout/LineLength
    it { is_expected.to have_many(:sns_links).class_name('SnsLink').dependent(:destroy) }
  end

  describe 'concerns' do
    it 'includes SnsLinkable module' do
      expect(described_class.included_modules).to include(SnsLinkable)
    end
  end
end
