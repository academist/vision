# frozen_string_literal: true

module Vision
  class ResearchersController < ApplicationController
    def index; end

    def show
      redirect_to researchers_path unless can_profile_browsing?
    end

    private

    def can_profile_browsing?
      return false if profile.blank?
      return false unless profile.published?

      true
    end

    def profile
      @profile ||= ::Vision::Profile.find_by(user_id: params[:user_id])
    end
  end
end
