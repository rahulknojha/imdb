class Award < ApplicationRecord
	belongs_to :awardable, polymorphic: true

end
