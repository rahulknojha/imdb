# frozen_string_literal: true

# Manages TV
class Tv < ApplicationRecord
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
  validates :title, :language, :episode , :duration ,presence: true
  validates :episode, numericality: true 
  # validates_associated :genres

end
