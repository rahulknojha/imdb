# frozen_string_literal: true

# Personnel class
class Personnel < ApplicationRecord
  has_and_belongs_to_many :movies
end
