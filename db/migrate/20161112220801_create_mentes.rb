class CreateMentes < ActiveRecord::Migration[5.0]
  def change
    create_table :mentes do |t|
      t.string :email
      t.string :name
      t.date :age
      t.string :mentor_type
      t.text :description
      t.string :question
      t.string :interests
      t.string :location
      t.string :langitude
      t.string :latitude

      t.timestamps
    end
  end
end
