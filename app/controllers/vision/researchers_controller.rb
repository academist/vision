# frozen_string_literal: true

module Vision
  class ResearchersController < ApplicationController
    def index; end

    def show
      @user = User.joins(:vision_profile).merge(Vision::Profile.where(published: true)).find(params[:id])
    end
  end
end
