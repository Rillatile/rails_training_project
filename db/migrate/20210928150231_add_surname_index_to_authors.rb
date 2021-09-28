class AddSurnameIndexToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_index :authors, :surname
  end
end
