# frozen_string_literal: true

module Vision
  class ResearchPublicationLink < ApplicationRecord
    belongs_to :profile, class_name: 'Vision::Profile'

    validates :url, presence: true, length: { maximum: 50 }
  end
end
