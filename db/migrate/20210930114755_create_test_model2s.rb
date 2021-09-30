class CreateTestModel2s < ActiveRecord::Migration[6.1]
  def change
    create_table :test_model2s do |t|
      t.string :field1
      t.string :field2

      t.timestamps
    end
  end
end
