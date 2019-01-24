# frozen_string_literal: true

# Manages Movies
class Movie < ApplicationRecord
  has_and_belongs_to_many :personnels
  has_many :reviews, as: :reviewable
  validates :title, presence: true
  validates :language, presence: true
  validates :release_date, presence: true
  validates :collection, presence: true, numericality: { only_integer: true }
  validates :budget, presence: true, numericality: { only_integer: true }
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
  has_one_attached :poster
  # validates :poster, content_type: ["image/png", "image/jpeg"]
  validate :poster_format

  private

  def poster_format
    return unless poster.attached?
    return if poster.blob.content_type.start_with? 'image/'

    poster.purge_later
    errors.add(:poster, 'Needs to be an image')
  end
end
