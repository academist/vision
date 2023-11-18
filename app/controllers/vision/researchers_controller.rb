# frozen_string_literal: true

module Vision
  class ResearchersController < ApplicationController
    def index; end

    def show
      redirect_to researchers_path unless profile&.published?
    end

    private

    def profile
      @profile ||= ::Vision::Profile.find_by(user_id: params[:user_id])
    end
  end
end
