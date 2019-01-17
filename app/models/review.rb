# frozen_string_literal: true

# Review & ratings class.. will also contains user_id
class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user
end
