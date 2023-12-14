# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Vision::Researchers' do
  describe 'GET /vision/researchers' do
    before { get researchers_path }

    it { expect(response).to have_http_status(:ok) }
  end

  describe 'GET /vision/researchers/:id' do
    subject(:get_researcher_path) { get researcher_path(user) }

    let!(:user_with_vision_profile) { create(:user) }
    let!(:user_without_vision_profile) { create(:user) }
    let(:vision_profile) { create(:vision_profile, user: user) }

    context 'when vision profile is available' do
      let(:user) { user_with_vision_profile }

      before do
        vision_profile
        get_researcher_path
      end

      it { expect(response).to have_http_status(:ok) }
    end

    # context 'when vision profile is available, published: false' do
    #   let(:user) { user_with_vision_profile }
    #   let(:vision_profile) { create(:vision_profile, :unpublished, user: user) }

    #   before do
    #     vision_profile
    #     get_researcher_path
    #   end

    #   it { expect(response).to have_http_status(:redirect) }
    # end

    context 'when vision profile is not available' do
      let(:user) { user_without_vision_profile }
      let(:vision_profile) { create(:vision_profile, user: user) }

      before { get_researcher_path }

      it { expect(response).to have_http_status(:redirect) }
    end
  end
end
