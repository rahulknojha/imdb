# frozen_string_literal: true

<<<<<<< HEAD
# Amazon web series
class Series < ApplicationRecord
  has_and_belongs_to_many :genre
  has_many :reviews, as: :reviewable
=======
# Manages series
class Series < ApplicationRecord
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
end
