# frozen_string_literal: true

module Vision
  class ResearchKeyword < ApplicationRecord
    belongs_to :profile, class_name: 'Vision::Profile'

    validates :name, presence: true, length: { maximum: 10 }
    validates :name_en, length: { maximum: 20 }
  end
end
