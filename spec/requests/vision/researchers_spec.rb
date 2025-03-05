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

    context 'research_output、research_fundingが存在しないとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }

      before do
        create(:vision_profile, user: user, published: true)
        action
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(response.body).not_to include('Research output') }
      it { expect(response.body).not_to include('Research funding') }
    end

    context 'research_outputが存在するとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }
      let!(:research_outputs) { create_list(:research_output, 3, user: user) }

      before do
        create(:vision_profile, user: user, published: true)
        action
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(response.body).to include('Research output') }

      it 'research_outputsが表示されていること' do
        research_outputs.each do |research_output|
          expect(response.body).to include(research_output.title)
        end
      end
    end

    context 'research_fundingが存在するとき' do
      let(:user) { create(:user) }
      let(:handle) { user.handle }
      let!(:research_fundings) { create_list(:research_funding, 3, user: user) }

      before do
        create(:vision_profile, user: user, published: true)
        action
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(response.body).to include('Research funding') }

      it 'research_fundingsが表示されていること' do
        research_fundings.each do |research_funding|
          expect(response.body).to include(research_funding.name)
        end
      end
    end
  end
end
