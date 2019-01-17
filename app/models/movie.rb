class Movie < ApplicationRecord
	has_and_belongs_to_many :personnels
	has_many :genres, as: :genreable
	has_many :awards, as: :awardable
end
