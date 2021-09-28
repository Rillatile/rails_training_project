class AddBirthplaceToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :birthplace, :string
  end
end
