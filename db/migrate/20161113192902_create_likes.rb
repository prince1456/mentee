class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :mentor, index: true, foreign_key: true
      t.references :mente, index: true, foreign_key: true
      t.timestamps
    end
  end
end
