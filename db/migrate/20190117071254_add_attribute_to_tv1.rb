class AddAttributeToTv1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :tvs, :duration, :integer
  end
end
