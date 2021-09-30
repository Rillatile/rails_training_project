class CreateTestModel4s < ActiveRecord::Migration[6.1]
  def change
    create_table :test_model4s do |t|
      t.string :field1
      t.string :field2

      t.timestamps
    end
  end
end
