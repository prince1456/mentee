class AddColumn2ToMente < ActiveRecord::Migration[5.0]
  def change
    add_column :mentes, :password_digest, :string
  end
end
