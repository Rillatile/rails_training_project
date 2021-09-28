class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.date :birthday

      t.timestamps
    end
  end
end
