# frozen_string_literal: true

# Manages genre
class Genre < ApplicationRecord
  validates :name, presence: true
  #  validates :name, acceptance: { accept: ['TRUE', 'accepted', 'Action', 'Adventure', 'Animation', 'Biography',
  #    'Comedy', 'Crime', 'Documentary', 'Drama','Family', 'Fantasy', 'Game Show', 'History', 'Horror',
  #    'Music', 'Musical', 'Mystery', 'News', 'Reality-TV', 'Romance', 'Sci-Fi', 'Sport', 'Superhero', 'Talk Show',
  #    'Thriller', 'War', 'Western'] }
  belongs_to :genreable, polymorphic: true

end
