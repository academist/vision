# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vision::ResearchPublicationLink do
  describe 'associations' do
    it { is_expected.to belong_to(:profile).class_name('Vision::Profile') }
  end
end
