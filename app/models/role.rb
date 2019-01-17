# frozen_string_literal: true

# Role class for personnel
class Role < ApplicationRecord
	validates :title, presence: true
end
