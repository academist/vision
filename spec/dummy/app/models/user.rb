# frozen_string_literal: true

class User < ApplicationRecord
  enum user_type: { supporter: 0, challenger: 1, researcher: 2 }
  has_one :vision_profile, class_name: 'Vision::Profile', dependent: :destroy
end
