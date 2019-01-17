# frozen_string_literal: true

# abcd
class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :review
      t.datetime :datetime
      t.references :reviewable, polymorphic: true, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
