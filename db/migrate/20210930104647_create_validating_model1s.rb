class CreateValidatingModel1s < ActiveRecord::Migration[6.1]
  def change
    create_table :validating_model1s do |t|
      t.string :title
      t.integer :just_number
      t.string :first_value
      t.string :second_value
      t.string :string_number
      t.string :uniq_string

      t.timestamps
    end
  end
end
