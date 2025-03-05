# frozen_string_literal: true

class User < ApplicationRecord
  has_one :vision_profile, class_name: 'Vision::Profile', dependent: :destroy
  has_many :research_outputs, dependent: :destroy
  has_many :research_fundings, dependent: :destroy
end
