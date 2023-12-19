# frozen_string_literal: true

module Vision
  class ResearchersController < ApplicationController
    def index; end

    def show
      raise ActionController::RoutingError, 'Not Found' unless profile&.published?
    end

    private

    def profile
      @profile ||= user.vision_profile
    end

    def user
      @user ||= User.find(params[:id])
    end
  end
end
