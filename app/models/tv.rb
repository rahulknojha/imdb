# frozen_string_literal: true

# TV shows class
class Tv < ApplicationRecord
  has_many :reveiews, as: :reviewable
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable

  validates :episode, :duration , numericality: { only_integer: true }
  validates :title, :premire_date, :episode, presence: true
  validates :title, format: { with: /\A[a-zA-Z]+\z/}

end
