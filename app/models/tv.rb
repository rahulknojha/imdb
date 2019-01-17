# frozen_string_literal: true

# TV shows class
class Tv < ApplicationRecord
  has_and_belongs_to_many :genre
  has_many :reveiews, as: :reviewable
end
