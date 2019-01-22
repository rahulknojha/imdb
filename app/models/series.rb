# frozen_string_literal: true

# Amazon web series
class Series < ApplicationRecord
  has_many :reviews, as: :reviewable
  has_many :genres, as: :genreable
  has_many :awards, as: :awardable
  validates :name, :budget ,presence: true
  validates :budget, numericality: true 
end
