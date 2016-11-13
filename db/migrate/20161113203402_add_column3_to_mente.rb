class AddColumn3ToMente < ActiveRecord::Migration[5.0]
  def change
    add_column :mentes, :longitude, :float
  end
end
