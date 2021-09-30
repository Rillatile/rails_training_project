class CreateTestModel3s < ActiveRecord::Migration[6.1]
  def change
    create_table :test_model3s do |t|
      t.string :field1
      t.string :field2
      t.string :field3

      t.timestamps
    end
  end
end
