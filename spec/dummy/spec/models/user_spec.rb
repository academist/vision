# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'associations' do
    it { is_expected.to have_one(:vision_profile).class_name('Vision::Profile').dependent(:destroy) }
  end

  describe 'dependent destroy' do
    it 'destroys associated vision profile' do
      user = create(:user)
      create(:vision_profile, user: user)

      expect { user.destroy }.to change(Vision::Profile, :count).by(-1)
    end
  end
end
