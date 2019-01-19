# frozen_string_literal: true

# Manages Movies
class Movie < ApplicationRecord
  has_and_belongs_to_many :personnels
  has_many :reviews, as: :reviewable
  validates :title, presence: true
  validates :language, presence: true
  validates :release_date, presence: true
  validates :collection, presence: true
  validates :budget, presence: true
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
  has_one_attached :poster
end
