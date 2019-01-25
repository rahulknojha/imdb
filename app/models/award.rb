# frozen_string_literal: true

# Manages awards
class Award < ApplicationRecord
  belongs_to :awardable, polymorphic: true
  validates :award_name, :category, presence: true
end
