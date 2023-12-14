# frozen_string_literal: true

module Vision
  class ResearchField < ApplicationRecord
    belongs_to :profile, class_name: 'Vision::Profile'

    validates :name, presence: true, length: { maximum: 20 }
    validates :name_en, length: { maximum: 30 }
  end
end
