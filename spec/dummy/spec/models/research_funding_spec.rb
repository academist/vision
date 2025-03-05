# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ResearchFunding do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(255) }
    it { is_expected.to validate_length_of(:funder).is_at_most(255) }
    it { is_expected.to validate_length_of(:research_topic).is_at_most(255) }
    it { is_expected.to validate_length_of(:url).is_at_most(255) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_numericality_of(:amount).is_greater_than(0) }
    it { is_expected.to validate_presence_of(:adopted_on) }
  end
end
