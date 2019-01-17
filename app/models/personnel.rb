# frozen_string_literal: true

<<<<<<< HEAD
# Personnel class
class Personnel < ApplicationRecord
  has_and_belongs_to_many :movies
  validates :name, presence: true
=======
# Manages Personnel
class Personnel < ApplicationRecord
  has_and_belongs_to_many :movies
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
end
