class Genre < ApplicationRecord
	 belongs_to :genreable, polymorphic: true



end
