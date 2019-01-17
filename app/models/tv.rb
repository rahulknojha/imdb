# frozen_string_literal: true

# Manages TV
class Tv < ApplicationRecord
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
end
