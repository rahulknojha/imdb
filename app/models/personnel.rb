# frozen_string_literal: true

# Manages Personnel
class Personnel < ApplicationRecord
  has_and_belongs_to_many :movies
end
