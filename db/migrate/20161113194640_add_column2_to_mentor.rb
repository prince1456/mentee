class AddColumn2ToMentor < ActiveRecord::Migration[5.0]
  def change
    add_column :mentors, :password_digest, :string
  end
end
