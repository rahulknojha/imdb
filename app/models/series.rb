# frozen_string_literal: true

# Amazon web series
class Series < ApplicationRecord
  has_and_belongs_to_many :genre
  has_many :reviews, as: :reviewable
end
