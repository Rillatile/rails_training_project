class CreateValidatingModel2s < ActiveRecord::Migration[6.1]
  def change
    create_table :validating_model2s do |t|
      t.string :just_string

      t.timestamps
    end
  end
end
