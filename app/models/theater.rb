# frozen_string_literal: true

# Movie theaters class
class Theater < ApplicationRecord
	validates :name, presence: true
	validates :address, presence: true
end
