# frozen_string_literal: true

# Manages awards
class Award < ApplicationRecord
  belongs_to :awardable, polymorphic: true
end