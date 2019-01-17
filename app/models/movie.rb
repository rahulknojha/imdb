class Movie < ApplicationRecord
	has_and_belongs_to_many :personnels
	has_many :reviews, as: :reviewable
end
