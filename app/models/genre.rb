# frozen_string_literal: true

# Manages genre
class Genre < ApplicationRecord
  belongs_to :genreable, polymorphic: true

end
