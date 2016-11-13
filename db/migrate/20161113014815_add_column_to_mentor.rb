class AddColumnToMentor < ActiveRecord::Migration[5.0]
  def change
    add_column :mentors, :longitute, :float
  end
end
