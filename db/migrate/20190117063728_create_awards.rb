class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
    	t.string :award_name
    	t.string :category
    	t.references :awardable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
