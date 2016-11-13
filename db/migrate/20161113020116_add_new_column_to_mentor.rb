class AddNewColumnToMentor < ActiveRecord::Migration[5.0]
  def change
    add_column :mentors, :longitude, :float
  end
end
