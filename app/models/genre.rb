# frozen_string_literal: true

<<<<<<< HEAD
class Genre < ApplicationRecord
	validates :name, presence: true
#	validates :name, acceptance: { accept: ['TRUE', 'accepted', 'Action', 'Adventure', 'Animation', 'Biography', 
#		'Comedy', 'Crime', 'Documentary', 'Drama','Family', 'Fantasy', 'Game Show', 'History', 'Horror',
#		'Music', 'Musical', 'Mystery', 'News', 'Reality-TV', 'Romance', 'Sci-Fi', 'Sport', 'Superhero', 'Talk Show',
#		'Thriller', 'War', 'Western'] }
end
=======
# Manages genre
class Genre < ApplicationRecord
  belongs_to :genreable, polymorphic: true
end
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
