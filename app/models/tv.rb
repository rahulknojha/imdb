# frozen_string_literal: true

<<<<<<< HEAD
# TV shows class
class Tv < ApplicationRecord
  has_and_belongs_to_many :genre
  has_many :reveiews, as: :reviewable
=======
# Manages TV
class Tv < ApplicationRecord
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
end
