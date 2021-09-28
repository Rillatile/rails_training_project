class ChangePriceTypeForBooks < ActiveRecord::Migration[6.1]
  def up
    change_table :books do |t|
      t.change :price, :integer, using: 'price::integer'
    end
  end

  def down
    change_table :books do |t|
      t.change :price, :string
    end
  end
end
