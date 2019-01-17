# frozen_string_literal: true

<<<<<<< HEAD
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
=======
# Manages Movies
class Movie < ApplicationRecord
  has_and_belongs_to_many :personnels
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
end
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
