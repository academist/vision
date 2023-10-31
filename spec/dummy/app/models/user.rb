# frozen_string_literal: true

class User < ApplicationRecord
  has_one :vision_profile, class_name: 'Vision::Profile', dependent: :destroy
end
