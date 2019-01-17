class AddAttributeToSeries < ActiveRecord::Migration[5.2]
  def change
  	  add_column :series, :premier_date, :datetime
  	  add_column :series, :language, :string
  	  add_column :series, :seasons, :integer
  end
end
