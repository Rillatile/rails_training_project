class RemoveBirthplaceFromAuthors < ActiveRecord::Migration[6.1]
  def change
    remove_column :authors, :birthplace, :string
  end
end
