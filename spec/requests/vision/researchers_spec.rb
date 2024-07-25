# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Vision::Researchers' do
  describe 'GET /vision/researchers' do
    before { get researchers_path }

    it { expect(response).to have_http_status(:ok) }
  end

  describe 'GET /vision/researchers/:handle' do
    subject(:action) { get researcher_path(handle) }

    context 'handleが存在しないとき' do
      let(:handle) { 'nonexistence' }

      it { expect { action }.to raise_error(ActiveRecord::RecordNotFound) }
    end

    context 'vision_profileが存在しないとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }

      it { expect { action }.to raise_error(ActiveRecord::RecordNotFound) }
    end

    context 'vision_profileが非公開のとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }

      before { create(:vision_profile, user: user, published: false) }

      it { expect { action }.to raise_error(ActiveRecord::RecordNotFound) }
    end

    context 'vision_profileが公開のとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }

      before do
        create(:vision_profile, user: user, published: true)
        action
      end

      it { expect(response).to have_http_status(:ok) }
    end
  end
end
