# frozen_string_literal: true

# Movie class
class Movie < ApplicationRecord
  has_and_belongs_to_many :personnels
  has_many :reviews, as: :reviewable
  validates :title, presence: true
  validates :language, presence: true
  validates :release_date, presence: true
  validates :collection, presence: true
  validates :budget, presence: true
end